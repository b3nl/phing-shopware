<?php
    /**
     * ./src/PhingShopware/Task/Condition/Plugin/IsInstalled.php
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */

    namespace PhingShopware\Task\Condition\Plugin;

    require_once realpath(__DIR__ . '/../../Base.php');

    /**
     * Checks if a plugin is installed.
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */
    class IsInstalled extends Base
    {
        /**
         * Returns true if the plugin is installed.
         * @return bool
         * @throws \BuildException
         */
        public function evaluate()
        {
            return $this->getSWPlugin()->getInstalled();
        } // function
    } // class