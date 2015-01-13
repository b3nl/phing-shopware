<?php
    /**
     * ./src/AbstractSWTask.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    require_once 'phing/Task.php';
    require_once __DIR__ . DIRECTORY_SEPARATOR . 'ShopwareDatabaseInstallTrait.php';

    /**
     * Basic Shopware-Task.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    abstract class AbstractSWTask extends Task
    {
        /**
         * Checks if the shopware exists (property SW_PATH like the original shopware constant).
         * @return bool
         * @throws BuildException
         */
        protected function checkSWPath()
        {
            $bReturn  = false;
            $oProject = $this->getProject();

            if ($sProp = $oProject->getProperty($sKey = 'SW_PATH')) {
                $sProp = rtrim($sProp, '\\/') . DIRECTORY_SEPARATOR;

                if (strpos($sProp, '.') === 0) {
                    $sProp  = $oProject->getBasedir() . substr($sProp, 1);
                } // if

                if ($bReturn = (bool) realpath($sProp . '/recovery/common/autoload.php')) {
                    $oProject->setProperty($sKey, $sProp);
                } // if
            } // if

            if (!$bReturn) {
                throw new BuildException('Missing existing Shopware path as Property "SW_PATH".');
            } // if

            return $bReturn;
        } // function

        /**
         * Includes the install autoloader of the shopware system.
         * @return AbstractSWTask
         */
        protected function includeSWAutoloader()
        {
            if (!defined('SW_PATH')) {
                require_once realpath($this->getProject()->getProperty('SW_PATH')  . '/recovery/common/autoload.php');
            } // if

            return $this;
        } // function

        /**
         * Called by the parser to let the task initialize properly.
         * Should throw a BuildException if something goes wrong with the build
         *
         * This is abstract here, but may not be overloaded by subclasses.
         *
         * @throws BuildException
         */
        public function init()
        {
            if (!defined('SW_PATH') && $this->checkSWPath()) {
                $this->includeSWAutoloader();
            } // if

            return parent::init();
        } // function
    } // class