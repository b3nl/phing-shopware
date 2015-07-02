<?php
    /**
     * ./src/PhingShopware/Task/ControlPlugin.php
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
    class ControlPlugin extends Base
    {
        use CLICaller;

        /**
         * Should the module be activated?
         * @var void|bool|string
         */
        protected $activate = null;

        /**
         * Ignores errors?
         * @var bool
         */
        protected $ignore = false;

        /**
         * Install the module first?
         * @var bool|void
         */
        protected $install = null;

        /**
         * Array of plugin properties.
         * @var \PropertyTask[]
         */
        protected $properties = array();

        /**
         * The plugin id.
         * @var string
         */
        protected $plugin = '';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'controlSWPlugin';

        /**
         * Update the plugin?
         * @var bool|void
         */
        protected $update = null;

        /**
         * Creates a child property.
         * @return \PropertyTask
         */
        public function createProperty() {
            $this->properties[] = $return = new \PropertyTask();

            $return->setPrefix($this->getPlugin());

            return $return;
        } // function

        /**
         * Returns the plugin in.
         * @return string
         */
        public function getPlugin()
        {
            return $this->plugin;
        } // function

        /**
         * Returns the child properties.
         * @return \PropertyTask[]
         */
        public function getProperties()
        {
            return $this->properties;
        } // function

        /**
         * Should the module be activated?
         * @return boolean|void
         */
        public function isActivate()
        {
            return $this->activate;
        } // function

        /**
         * Should the module ignore plugin errors?
         * @return boolean
         */
        public function isIgnore()
        {
            return $this->ignore;
        }

        /**
         * Install the module first?
         * @return boolean|void
         */
        public function isInstall()
        {
            return $this->install;
        } // function

        /**
         * Is Update?
         * @return boolean|void
         */
        public function isUpdate()
        {
            return $this->update;
        } // function

        /**
         * Controlling the plugin.
         * @throws \BuildException
         */
        public function main()
        {
            if (!$plugin = $this->getPlugin()) {
                throw new \BuildException("plugin attribute is required", $this->location);
            } // if

            $installed = false;

            if ($this->isInstall()) {
                $this->log('Installing plugin: ' . $plugin);

                list($output, $return) = $this->clu2cli('sw:plugin:install ' . escapeshellarg($plugin));
                $installed = !$return;

                if ($return) {
                    $msg = sprintf('Problem white installing the plugin "%s": %s', $plugin, implode("n", $output));

                    if ($this->isIgnore()) {
                        $this->log($msg, \Project::MSG_WARN);
                    } else {
                        throw new \BuildException($msg);
                    } // else
                } // if
            } // if

            if (!is_null($activate = $this->isActivate())) {
                $this->log('Activating/Deactivating plugin: ' . $plugin);

                list($output, $return) = $this->clu2cli(
                    'sw:plugin:' . ((bool) $activate ? 'activate' : 'deactivate') . ' ' . escapeshellarg($plugin)
                );

                if ($return) {
                    $msg = sprintf('Problem white activating/deactivating the plugin "%s": %s', $plugin, implode("n", $output));

                    if ($this->isIgnore()) {
                        $this->log($msg, \Project::MSG_WARN);
                    } else {
                        throw new \BuildException($msg);
                    } // else
                } // if
            } // if

            if (!is_null($update = $this->isUpdate())) {
                $this->log('Updating plugin: ' . $plugin);

                list($output, $return) = $this->clu2cli(
                    'sw:plugin:update ' . escapeshellarg($plugin)
                );

                if ($return) {
                    $msg = sprintf('Problem white updating the plugin "%s": %s', $plugin, implode("n", $output));

                    if ($this->isIgnore()) {
                        $this->log($msg, \Project::MSG_WARN);
                    } else {
                        throw new \BuildException($msg);
                    } // else
                } // if
            } // if

            if ($props = $this->getProperties()) {
                $this->processPluginProperties($props);
            } // if
        } // function

        protected function processPluginProperties($props)
        {
            $plugin = $this->getPlugin();

            /** @var \PropertyTask|string $value */
            foreach ($props as $name => $value) {
                if ($value instanceof \PropertyTask) {
                    if ($file = $value->getFile()) {
                        if ($file->exists()) {
                            $fileProps = new \Properties();
                            $fileProps->load($file);

                            if ($fileProps = $fileProps->getProperties()) {
                                $this->processPluginProperties($fileProps);
                            } // if
                        } else {
                            throw new \BuildException('Could not load the property file for plugin ' . $plugin);
                        }

                        continue;
                    } // if

                    $name  = $value->getName();
                    $value = $value->getValue();
                } // if

                if ($name === 'dependencies') {
                    continue;
                } // if

                $this->log('Setting plugin-property: ' . $plugin . ' - ' . $name);

                if (is_bool($value)) {
                    $value = $value ? 'true' : 'false';
                } elseif (is_string($value)) {
                    $value = escapeshellarg($value);
                } // elseif

                list($output, $return) = $this->clu2cli(sprintf(
                    'sw:plugin:config:set %s %s %s', escapeshellcmd($plugin), escapeshellcmd($name), $value
                ));

                if ($return) {
                    $msg = sprintf('Problem white setting the plugin config %s::%s: %s', $plugin, $name, implode("n", $output));

                    if ($this->isIgnore()) {
                        $this->log($msg, \Project::MSG_WARN);
                    } else {
                        throw new \BuildException($msg);
                    } // else
                } // if
            } // foreach

            return $this;
        } // function

        /**
         * Should the module be activated?
         *
         * Please use 0 or 1 for this method, because a phing property with the value "false" is parsed to an empty
         * string aswell. If you fill the value directy, and not thru an phing property, you can use boolean values aswell.
         * @param string|bool $activate
         */
        public function setActivate($activate)
        {
            if ($activate !== '') {
                $this->activate = $activate;
            } // if
        } // function

        /**
         * Ignores activation errors?
         * @param boolean $ignore
         */
        public function setIgnore($ignore)
        {
            $this->ignore = $ignore;
        } // function

        /**
         * Install the module first?
         * @param boolean $install
         */
        public function setInstall($install)
        {
            $this->install = $install;
        } // function

        /**
         * Sets the plugin id.
         * @param string $plugin
         */
        public function setPlugin($plugin)
        {
            $this->plugin = $plugin;
        } // function

        /**
         * Update plugin?
         * @param bool $update
         */
        public function setUpdate($update)
        {
            $this->update = $update;
        } // function
    } // class
