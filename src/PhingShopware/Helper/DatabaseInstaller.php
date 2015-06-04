<?php
    /**
     * ./src/PhingShopware/Trait/DatabaseInstaller.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Helper
     * @version $id$
     */

    namespace PhingShopware\Helper;

    use \Shopware\Recovery\Install\Database;

    /**
     * Trait to provide the basic install object for shopware.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Helper
     * @version $id$
     */
    trait DatabaseInstaller
    {
        /**
         * The SW Component to install the system.
         * @var null|\Shopware\Recovery\Install\Database
         */
        private $installSWApp = null;

        /**
         * Returns a reference to current project
         * @return \Project Reference to current porject object
         */
        abstract public function getProject(); // function

        /**
         * Returns the class to install shopware.
         * @return null|\Shopware\Recovery\Install\Database
         */
        protected function getSWInstallApp()
        {
            $project = $this->getProject();

            if (!$this->installSWApp) {
                $this->installSWApp = new Database(
                    array(
                        "user" => (string)$project->getProperty('database_user'),
                        "password" => (string)$project->getProperty('database_password'),
                        "host" => (string)$project->getProperty('database_host'),
                        "port" => (string)$project->getProperty('database_port'),
                        "socket" => (string)$project->getProperty('database_socket'),
                        "database" => (string)$project->getProperty('database_name'),
                    ),
                    SW_PATH
                );
            } // if

            return $this->installSWApp;
        } // function


    } // trait
