<?php
    /**
     * ./src/PhingShopware/Task/InstallDatabase.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    use PhingShopware\Helper\DatabaseInstaller,
        PhingShopware\Helper\DatabaseWriter;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */
    class InstallDatabase extends Base
    {
        use DatabaseInstaller, DatabaseWriter {
            DatabaseInstaller::getSWInstallApp insteadof DatabaseWriter;
        }

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'installSWDatabase';

        /**
         * Collects the shopware queries of the install setup and returns the file name of the buffer.
         * @return string
         */
        protected function collectSWQueriesInBuffer()
        {
            $this->log('Buffering basic preparation queries.');
            $project = $this->getProject();
            $queries = <<<'EOD'
    SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
    SET time_zone = "+00:00";
    SET FOREIGN_KEY_CHECKS = 0;
    /*!40101 SET @saved_cs_client     = @@character_set_client */;
    /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
    /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
    /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
    /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
    /*!40103 SET TIME_ZONE='+00:00' */;
    /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
    /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
    /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
    /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
EOD;

            $this->log('Buffering sql/sw4_clean.sql');
            $queries .= "\n" . file_get_contents(SW_PATH . '/recovery/install/data/sql/sw4_clean.sql');

            // If end-user import en.sql
            if (($lang = $project->getProperty('language')) && ($lang != "de")) {
                $this->log('Buffering sql/en.sql');
                $queries .= "\n" . file_get_contents(SW_PATH . '/recovery/install/data/sql/en.sql');
            } // if

            $this->log('Buffering language preparation queries.');
            $queries .= "\n" . 'SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
                   SET time_zone = "+00:00";
                   SET @locale_de_DE = (SELECT id FROM s_core_locales WHERE locale = "de_DE");
                   SET @locale_en_GB = (SELECT id FROM s_core_locales WHERE locale = "en_GB");';

            $this->log('Buffering sql/snippets.sql');
            $queries .= "\n" . file_get_contents(SW_PATH . '/recovery/install/data/sql/snippets.sql');
            $buffer   = tempnam(sys_get_temp_dir(), 'deploy');

            $this->log('Writing query buffer.');
            file_put_contents(
                $buffer,
                str_replace(";\r\n", ";\n", $queries)
            );

            return $buffer;
        } // function

        /**
         * The main entry point method.
         *
         * CLI Tools not yet usable for large sql files!
         * @return void
         * @throws \BuildException If there is something wrong.
         */
        public function main()
        {
            $buffer = $this->collectSWQueriesInBuffer();
            $this->log('Installing query buffer.');
            $this->writeToSWDatabase($buffer);

            return null;
        } // function
    } // class