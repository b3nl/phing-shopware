<?php
    /**
     * ./src/PhingShopware/Task/ProcessLicenseCheck.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\DatabaseInstaller,
        Shopware\Recovery\Install\License;

    /**
     * Writes the shopware config file.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class ProcessLicenseCheck extends Base
    {
        use DatabaseInstaller;

        /**
         * The default shop host.
         * @var string
         */
        protected $shopHost = 'localhost';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'processSWLicenseCheck';

        /**
         * Returns the shop host.
         * @return string
         */
        public function getShopHost()
        {
            return $this->shopHost;
        } // function

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

            $oLicense = new License($oInstall->getDatabase());

            $oLicense->evaluateLicense('', $this->getShopHost(), 'CE');

            if ($sError = $oLicense->getError()) {
                throw new \BuildException($sError);
            } // if
        } // function

        /**
         * Sets the shop host.
         * @param string $shopHost
         */
        public function setShopHost($shopHost)
        {
            $this->shopHost = $shopHost;
        } // function
    } // class