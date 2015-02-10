<?php
    /**
     * ./src/PhingShopware/Task/Condition/Plugin/IsExisting.php
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */

    namespace PhingShopware\Task\Condition\Plugin;

    require_once realpath(__DIR__ . '/../../Base.php');

    /**
     * Checks if a plugin exists.
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */
    class IsExisting extends Base
    {
        /**
         * Returns true if the plugin exists.
         * @return bool
         * @throws \BuildException
         */
        public function evaluate()
        {
            try {
                return (bool) $this->getSWPlugin();
            } catch (\BuildException $exc) {
                $this->log($exc->getMessage(), \Project::MSG_VERBOSE);
                // silent catch
            } // catch
        } // function
    } // class