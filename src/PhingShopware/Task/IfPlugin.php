<?php
/**
 * ./src/PhingShopware/Task/IfPlugin.php
 * @author blange <code@wbl-konzept.de>
 * @package phingShopware
 * @subpackage Task
 * @version $id$
 */

namespace PhingShopware\Task;

use PhingShopware\Task\Condition\Plugin\IsActive;
use PhingShopware\Task\Condition\Plugin\IsExisting;
use PhingShopware\Task\Condition\Plugin\IsInstalled;
use PhingShopware\Task\Condition\Plugin\NeedsUpdate;

require_once 'phing/tasks/system/IfTask.php';
require_once realpath(__DIR__ . '/Condition/Plugin/Base.php');

/**
 * Special if task for shopware plugins.
 * @author blange <code@wbl-konzept.de>
 * @package phingShopware
 * @subpackage Task
 * @version $id$
 */
class IfPlugin extends \IfTask
{
    /**
     * Taskname for logger
     * @var string
     */
    protected $taskName = 'ifSWPlugin';

    /**
     * Task to check if a plugin exists
     * @return IsExisting
     */
    public function createExistsSWPlugin()
    {
        require_once realpath(__DIR__ . '/Condition/Plugin/IsExisting.php');

        array_push($this->conditions, $check = new IsExisting());
        return $check;
    } // function

    /**
     * Task to check if a plugin is active.
     * @return IsActive
     */
    public function createIsSWPluginActive()
    {
        require_once realpath(__DIR__ . '/Condition/Plugin/IsActive.php');

        array_push($this->conditions, $check = new IsActive());
        return $check;
    } // function

    /**
     * Task to check if a plugin is installed.
     * @return IsInstalled
     */
    public function createIsSWPluginInstalled()
    {
        require_once realpath(__DIR__ . '/Condition/Plugin/IsInstalled.php');

        array_push($this->conditions, $check = new IsInstalled());
        return $check;
    } // function

    /**
     * Task to check if a plugin needs an update
     * @return NeedsUpdate
     */
    public function createSWPluginNeedsUpdate()
    {
        require_once realpath(__DIR__ . '/Condition/Plugin/NeedsUpdate.php');

        array_push($this->conditions, $check = new NeedsUpdate());
        return $check;
    } // function
} // class