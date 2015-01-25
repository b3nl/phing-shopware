<?php
    /**
     * ./src/PhingShopware/Task/WriteConfigFile.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\DatabaseInstaller;

    /**
     * Writes the shopware config file.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class WriteConfigFile extends Base
    {
        use DatabaseInstaller;

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'writeSWConfigFile';

        /**
         * The main entry point method.
         * @return void
         * @throws \BuildException If there is something wrong
         */
        public function main()
        {
            $oInstall = $this->getSWInstallApp();

            $oInstall->setDatabase();

            if ($sError = $oInstall->getError()) {
                throw new \BuildException($sError);
            } // if

            $this->log('Writing config file');

            $oInstall->writeConfig();

            if ($sError = $oInstall->getError()) {
                throw new \BuildException($sError);
            } // if
        } // function
    } // class