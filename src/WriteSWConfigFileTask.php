<?php
    /**
     * ./src/WriteSWConfigFileTask.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'AbstractSWTask.php';

    /**
     * Writes the shopware config file.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class WriteSWConfigFileTask extends AbstractSWTask
    {
        use ShopwareDatabaseInstallTrait;

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'writeSWConfigFile';

        /**
         * The main entry point method.
         * @return void
         * @throws BuildException If there is something wrong
         */
        public function main()
        {
            $oInstall = $this->getSWInstallApp();

            $oInstall->setDatabase();

            if ($sError = $oInstall->getError()) {
                throw new BuildException($sError);
            } // if

            $oInstall->writeConfig();

            if ($sError = $oInstall->getError()) {
                throw new BuildException($sError);
            } // if
        } // function
    } // class