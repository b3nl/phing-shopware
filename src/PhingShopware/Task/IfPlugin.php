<?php
    /**
     * ./src/PhingShopware/Task/IfPlugin.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;
    use PhingShopware\Task\Condition\Plugin\IsActive,
        PhingShopware\Task\Condition\Plugin\IsExisting,
        PhingShopware\Task\Condition\Plugin\IsInstalled;

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
         * @return IsActive
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
         * @return IsActive
         */
        public function createIsSWPluginInstalled()
        {
            require_once realpath(__DIR__ . '/Condition/Plugin/IsInstalled.php');

            array_push($this->conditions, $check = new IsInstalled());
            return $check;
        } // function
    } // class