<?php
    /**
     * ./src/PhingShopware/Task/HandleMaintenance.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\CLICaller;

    /**
     * Enables or disables the maintenance mode.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */
    class HandleMaintenance extends Base
    {
        use CLICaller;

        /**
         * Should the maintenance be enabled?
         * @var bool
         */
        protected $enable = true;

        /**
         * The scope for the maintenance mode.
         * @var int
         */
        protected $shopScope = 0;

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'handleSWMaintenance';

        /**
         * Should the maintenance be enabled?
         * @return boolean
         */
        public function isEnable()
        {
            return $this->enable;
        }

        /**
         * Returns the scope for the maintenance mode.
         * @return int
         */
        public function getShopScope()
        {
            return $this->shopScope;
        }

        /**
         * Controlling the plugin.
         * @throws \BuildException
         */
        public function main()
        {
            $query = 'UPDATE s_core_config_elements SET value = \\"' . serialize($this->isEnable()) . '\\" WHERE name = \\"setoffline\\"';

            if ($shopId = $this->getShopScope()) {
                $query .= ' AND scope = ' . (int) $shopId;
            } // if

            $this->clu2cli('dbal:run-sql "' . $query . '"');
        } // function


        /**
         * Should the maintenance be enabled?
         * @param boolean $enable
         */
        public function setEnable($enable)
        {
            $this->enable = $enable;
        } // function

        /**
         * Sets the scope for the maintenance mode.
         * @param int $shopScope
         */
        public function setShopScope($shopScope)
        {
            $this->shopScope = $shopScope;
        } // function
    } // class