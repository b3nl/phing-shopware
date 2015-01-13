<?php
    /**
     * ./src/InstallSWDatabaseTask.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'AbstractSWTask.php';

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class InstallSWDatabaseTask extends WriteSWConfigTask
    {
        /**
         * The main entry point method.
         *
         * CLI Tools not yet usable for large sql files!
         * @return void
         * @throws BuildException If there is something wrong.
         */
        public function main()
        {
            $sBuffer = tempnam('tmp', 'phing');
            $sPath = $this->getProject()->getProperty('SW_PATH');

            // default pre sql shopware 4.3.2
            $preSql = <<<'EOD'
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
';
EOD;
           // file_put_contents($sBuffer, $preSql);

            // first setup file shopware 4.3.2
            file_put_contents($sBuffer, "\n" . file_get_contents($sPath . '/recovery/install/data/sql/sw4_clean.sql'), FILE_APPEND);

            $preSql = '
               SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
               SET time_zone = "+00:00";
               SET @locale_de_DE = (SELECT id FROM s_core_locales WHERE locale = "de_DE");
               SET @locale_en_GB = (SELECT id FROM s_core_locales WHERE locale = "en_GB");
           ';

            file_put_contents($sBuffer, $preSql);

            file_put_contents($sBuffer, "\n" . file_get_contents($sPath . '/recovery/install/data/sql/snippets.sql'), FILE_APPEND);

            exec(
                'php ' . $sPath . '/bin/console dbal:import ' . $sBuffer,
                $aReturn,
                $bReturn
            );

            /*

                        if ($bReturn) {
                            throw new BuildException(implode("\n", $aReturn));
                        } // if

                        exec(
                            'php ' . $sPath . '/bin/console dbal:import ' . $sPath . '/recovery/install/data/sql/snippets.sql',
                            $aReturn,
                            $bReturn
                        );*/

            if ($bReturn) {
                throw new BuildException(implode("\n", $aReturn));
            } // if

            return null;
        } // function
    } // class