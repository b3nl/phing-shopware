<?php
    /**
     * ./src/PhingShopware/Task/Condition/Plugin/IsActive.php
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */

    namespace PhingShopware\Task\Condition\Plugin;

    require_once realpath(__DIR__ . '/../../Base.php');

    /**
     * Checks if a plugin is active.
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */
    class IsActive extends Base
    {
        /**
         * Returns true if the module is active.
         * @return bool
         * @throws \BuildException
         */
        public function evaluate()
        {
            return $this->getSWPlugin()->getActive();
        } // function
    } // class