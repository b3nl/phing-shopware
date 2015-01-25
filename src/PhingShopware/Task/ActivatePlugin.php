<?php
    /**
     * ./src/PhingShopware/Task/ActivatePlugin.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Activates a plugin.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class ActivatePlugin extends Base
    {
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

            exec(
                'php ' . SW_PATH . '/bin/console sw:plugin:activate ' . escapeshellarg($plugin),
                $output,
                $return
            );

            if ($return) {
                $msg = sprintf('Problem white activating the plugin "%s": %s', $plugin, implode("n", $output));

                if ($this->isIgnore()) {
                    $this->log($msg, \Project::MSG_WARN);
                }  else {
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
        }

        /**
         * Ignore errors?
         * @return boolean
         */
        public function isIgnore()
        {
            return $this->ignore;
        }

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