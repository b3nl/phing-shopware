<?php
/**
 * ./src/PhingShopware/Task/Condition/Plugin/NeedsUpdate.php
 * @author blange <code@wbl-konzept.de>
 * @author MarHue <marcel@pixolith.de>
 * @package PhingShopware
 * @subpackage Task\Condition\Plugin
 * @version $id$
 */

namespace PhingShopware\Task\Condition\Plugin;

require_once realpath(__DIR__ . '/../../Base.php');

/**
 * Checks if a plugin needs an update.
 * @author blange <code@wbl-konzept.de>
 * @author MarHue <marcel@pixolith.de>
 * @package PhingShopware
 * @subpackage Task\Condition\Plugin
 * @version $id$
 */
class NeedsUpdate extends Base
{
    /**
     * Returns true if the plugin needs an update.
     * @return bool
     * @throws \BuildException
     */
    public function evaluate()
    {
        return $this->getSWPlugin()->getUpdateVersion();
    } // function
}