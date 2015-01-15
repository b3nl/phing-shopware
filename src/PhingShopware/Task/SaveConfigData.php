<?php
    /**
     * ./src/PhingShopware/Task/SaveConfigData.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Writes the shopware config file.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class SaveConfigData extends Base
    {
        use DatabaseInstaller;

        /**
         * The admin language.
         * @var string
         */
        protected $adminLanguage = 'de_DE';

        /**
         * The name of the backend.
         * @var string
         */
        protected $adminName = 'Demo-Admin';

        /**
         * The mail address of the admin user.
         * @var string
         */
        protected $adminEmail = 'demo@demo.de';

        /**
         * The admin password.
         * @var string
         */
        protected $adminPassword = 'demo';

        /**
         * The admin user name.
         * @var string
         */
        protected $adminUser = 'demo';

        /**
         * The default shop mail.
         * @var string
         */
        protected $configMail = 'test@example.com';

        /**
         * The default shop currency.
         * @var string
         */
        protected $shopCurrency = 'EUR';

        /**
         * The default shop language.
         * @var string
         */
        protected $shopLanguage = 'de_DE';

        /**
         * The default shop host.
         * @var string
         */
        protected $shopHost = 'localhost';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'saveSWConfigData';

        /**
         * Returns the admin mail.
         * @return string
         */
        public function getAdminEmail()
        {
            return $this->adminEmail;
        } // function

        /**
         * Returns the admin language.
         * @return string
         */
        public function getAdminLanguage()
        {
            return $this->adminLanguage;
        } // function

        /**
         * Returns the backend name.
         * @return string
         */
        public function getAdminName()
        {
            return $this->adminName;
        } // function

        /**
         * Returns the admin password.
         * @return string
         */
        public function getAdminPassword()
        {
            return $this->adminPassword;
        } // function


        /**
         * Returns the admin user name.
         * @return string
         */
        public function getAdminUser()
        {
            return $this->adminUser;
        } // function

        /**
         * Returns the shop mail.
         * @return string
         */
        public function getConfigMail()
        {
            return $this->configMail;
        } // function

        /**
         * Returns the default shop currency.
         * @return string
         */
        public function getShopCurrency()
        {
            return $this->shopCurrency;
        } // function

        /**
         * Returns the shop host.
         * @return string
         */
        public function getShopHost()
        {
            return $this->shopHost;
        } // function

        /**
         * Returns the default shop language.
         * @return string
         */
        public function getShopLanguage()
        {
            return $this->shopLanguage;
        } // function

        /**
         * The main entry point method.
         * @return void
         * @throws BuildException If there is something wrong.
         */
        public function main()
        {
            $config  = new \Shopware\Recovery\Install\Configuration();
            $install = $this->getSWInstallApp();

            $install->setDatabase();
            $config->setDatabase($install->getDatabase());

            $configData = array(
                'c_config_admin_email'     => $this->getAdminEmail(),
                'c_config_admin_language'  => $this->getAdminLanguage(),
                'c_config_admin_name'      => $this->getAdminName(),
                'c_config_admin_password'  => $this->getAdminPassword(),
                'c_config_admin_password2' => $this->getAdminPassword(),
                'c_config_admin_user'      => $this->getAdminUser(),
                'c_config_mail'            => $this->getConfigMail(),
                'c_config_shop_currency'   => $this->getShopCurrency(),
                'c_config_shop_language'   => $this->getShopLanguage(),
                'c_config_shop_host'       => $this->getShopHost(),
                'c_edition'                => 'ce',
            );

            try {
                $config->createAdmin($configData);
                $config->updateConfig($configData);
                $config->updateShop($configData);
            } catch (\Exception $exception) {
                throw new \BuildException($exception->getMessage());
            } // catch
        } // function


        /**
         * Sets the admin mail.
         * @param string $adminEmail
         */
        public function setAdminEmail($adminEmail)
        {
            $this->adminEmail = $adminEmail;
        } // function

        /**
         * Sets the admin language.
         * @param string $adminLanguage
         */
        public function setAdminLanguage($adminLanguage)
        {
            $this->adminLanguage = $adminLanguage;
        } // function

        /**
         * Sets the backend name.
         * @param string $adminName
         */
        public function setAdminName($adminName)
        {
            $this->adminName = $adminName;
        } // function

        /**
         * Sets the admin password.
         * @param string $adminPassword
         */
        public function setAdminPassword($adminPassword)
        {
            $this->adminPassword = $adminPassword;
        } // function

        /**
         * Sets the admin user name.
         * @param string $adminUser
         */
        public function setAdminUser($adminUser)
        {
            $this->adminUser = $adminUser;
        } // function

        /**
         * Sets the mail of the shop.
         * @param string $configMail
         */
        public function setConfigMail($configMail)
        {
            $this->configMail = $configMail;
        } // function

        /**
         * Sets the shop currency.
         * @param string $shopCurrency
         */
        public function setShopCurrency($shopCurrency)
        {
            $this->shopCurrency = $shopCurrency;
        } // function

        /**
         * Sets the shop host.
         * @param string $shopHost
         */
        public function setShopHost($shopHost)
        {
            $this->shopHost = $shopHost;
        } // function

        /**
         * Sets the default shop language.
         * @param string $shopLanguage
         */
        public function setShopLanguage($shopLanguage)
        {
            $this->shopLanguage = $shopLanguage;
        } // function
    } // class