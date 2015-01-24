<?php
    /**
     * ./engine/Shopware/Plugins/Local/Frontend/PxswVWOTracking/Bootstrap.php
     * @author bjoern.lange@pixolith.de
     * @category Plugins
     * @package Frontend
     * @subpackage PxswVWOTracking
     * @version $id$
     */

    /**
     * Bootstrapping for the VWO-Tracking.
     * @author bjoern.lange@pixolith.de
     * @category Plugins
     * @package Frontend
     * @subpackage PxswVWOTracking
     * @version $id$
     */
    class Shopware_Plugins_Frontend_PxswVWOTracking_Bootstrap extends Shopware_Components_Plugin_Bootstrap
    {
        /**
         * Creates the config form.
         * @return Shopware_Plugins_Frontend_PxswVWOTracking_Bootstrap
         */
        public function createConfiguration()
        {
            $this->Form()
                ->addElement(
                    'checkbox',
                    'isActive',
                    array(
                        'description' => 'Ist das Tracking im jeweiligen Shop aktiv?',
                        'label' => 'Tracking aktiv?',
                        'required' => true,
                        'scope' => Shopware\Models\Config\Element::SCOPE_SHOP,
                        'value' => true
                    )
                )
                ->addElement(
                    'text',
                    'accountId',
                    array(
                        'label' => 'VWO Account ID',
                        'required' => true,
                        'scope' => Shopware\Models\Config\Element::SCOPE_SHOP
                    )
                )
                ->addElement(
                    'number',
                    'settingsTolerance',
                    array(
                        'label' => 'Wartezeit auf VWO Einstellungen',
                        'required' => true,
                        'scope' => Shopware\Models\Config\Element::SCOPE_SHOP,
                        'value' => 2000,
                    )
                )
                ->addElement(
                    'number',
                    'libraryTolerance',
                    array(
                        'label' => 'Wartezeit auf VWO Bibliothek',
                        'required' => true,
                        'scope' => Shopware\Models\Config\Element::SCOPE_SHOP,
                        'value' => 2500,
                    )
                )
                ->addElement(
                    'checkbox',
                    'useNewJQuery',
                    array(
                        'description' => 'Sollten Sie jQuery > 1.4.2 nutzen, so bejahen Sie bitte diese Option.',
                        'label' => 'Nutzung von eigener jQuery Bibliothek?',
                        'required' => true,
                        'scope' => Shopware\Models\Config\Element::SCOPE_SHOP,
                        'value' => false,
                    )
                );

            return $this->translateConfiguration();
        } // function

        /**
         * Returns the info array for the module.
         * @return array
         */
        public function getInfo()
        {
            return array(
                'author' => 'pixolith GmbH & Co. KG',
                'copyright' => 'Copyright © 2015, pixolith GmbH & Co. KG',
                'version' => '1.0.0',
                'label' => 'pixolith - VWO Tracking',
                'supplier' => 'pixolith GmbH & Co. KG',
                'description' => 'VWO Tracking',
                'support' => 'info@pixolith.de',
                'link' => 'http://www.pixolith.de'
            );
        } // function

        /**
         * Install-Method.
         * @return bool
         */
        public function install()
        {
            $this
                ->createConfiguration()
                ->registerEvents();

            return true;
        } // function

        /**
         * Callback for the dispatching.
         * @param Enlight_Event_EventArgs $oArguments
         * @return null
         */
        public function onPostDispatch(Enlight_Event_EventArgs $oArguments)
        {
            $oConfig = $this->Config();

            if ($oConfig->isActive) {
                /**@var Shopware_Controllers_Frontend_Index $oController */
                $oController = $oArguments->getSubject();

                /** @var Enlight_Controller_Request_RequestHttp $oRequest */
                $oRequest = $oArguments->getRequest();

                /** @var $view Enlight_View_Default */
                $oView = $oController->View();

                if ($oRequest->getModuleName() === 'frontend' && $oRequest->isDispatched() &&
                    !$oArguments->getResponse()->isException() && $oView->hasTemplate()
                ) {
                    $oView
                        ->addTemplateDir($this->Path() . 'etc' . DIRECTORY_SEPARATOR)
                        ->extendsTemplate('code.tpl');

                    $aNames = array('accountId', 'libraryTolerance', 'settingsTolerance', 'useNewJQuery');

                    foreach ($aNames as $sName) {
                        $oView->assign('VWO' . ucfirst($sName), $oConfig->$sName);
                    } // foreach
                } // if
            } // if

            return null;
        } // function

        /**
         * Registers the events for the module.
         * @return Shopware_Plugins_Frontend_PxswVWOTracking_Bootstrap
         */
        protected function registerEvents()
        {
            return $this->subscribeEvent('Enlight_Controller_Action_PostDispatch', 'onPostDispatch');
        } // function

        /**
         * Translates the config.
         * @return Shopware_Plugins_Frontend_PxswVWOTracking_Bootstrap
         */
        protected function translateConfiguration()
        {
            $oForm = $this->Form();
            $oShopRepository = Shopware()->Models()->getRepository('\Shopware\Models\Shop\Locale');
            $aTranslations = array(
                'en_GB' => $aTrans = array(
                    'isActive' => array('active tracking?', 'Is the tracking active for the actual subshop?'),
                    'settingsTolerance' => array('Timeout for the VWO settings'),
                    'libraryTolerance' => array('Timeout for loading the VWO codes'),
                    'useNewJQuery' => array(
                        'Using of your own jQuery?',
                        'Yes to this option, if you use jQuery 1.4.2 or older'
                    )
                ),
                'en_US' => $aTrans
            );

            foreach ($aTranslations as $sLocale => $aTexts) {
                if ($oLocale = $oShopRepository->findOneBy(array('locale' => $sLocale))) {
                    foreach ($aTexts as $sKey => $aText) {
                        $oTranslation = new \Shopware\Models\Config\ElementTranslation();
                        $oTranslation
                            ->setLabel(array_shift($aText))
                            ->setDescription($aText ? current($aText) : '')
                            ->setLocale($oLocale);

                        $oForm->getElement($sKey)->addTranslation($oTranslation);
                    } // foreach
                } // if
            } // foreach

            return $this;
        } // function
    } // class