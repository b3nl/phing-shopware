<?php
    /**
     * ./src/PhingShopware/Task/ActivatePlugin.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    use PhingShopware\Helper\CLICaller;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Activates a plugin.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */
    class ActivatePlugin extends Base
    {
        use CLICaller;

        /**
         * Ignores errors?
         * @var bool
         */
        protected $ignore = false;

        /**
         * The plugin id.
         * @var string
         */
        protected $plugin = '';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'activateSWPlugin';

        /**
         * Activates the given plugin or throws an exception.
         * @throws \BuildException
         */
        public function main()
        {
            if (!$plugin = $this->getPlugin()) {
                throw new \BuildException("plugin attribute is required", $this->location);
            } // if

            $this->log('Activation of plugin: ' . $plugin);

            list($output, $return) = $this->clu2cli('sw:plugin:activate ' . escapeshellarg($plugin));

            if ($return) {
                $msg = sprintf('Problem white activating the plugin "%s": %s', $plugin, implode("n", $output));

                if ($this->isIgnore()) {
                    $this->log($msg, \Project::MSG_WARN);
                } else {
                    throw new \BuildException($msg);
                } // else
            } // if
        } // function

        /**
         * Returns the plugin id.
         * @return string
         */
        public function getPlugin()
        {
            return $this->plugin;
        } // function

        /**
         * Ignore errors?
         * @return boolean
         */
        public function isIgnore()
        {
            return $this->ignore;
        } // function

        /**
         * Ignore errors?
         * @param boolean $ignore
         */
        public function setIgnore($ignore)
        {
            $this->ignore = $ignore;
        } // function

        /**
         * Sets the plugin id.
         * @param string $plugin
         */
        public function setPlugin($plugin)
        {
            $this->plugin = $plugin;
        } // function
    } // class