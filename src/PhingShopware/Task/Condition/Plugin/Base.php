<?php
    /**
     * ./src/PhingShopware/Task/Condition/Plugin/Base.php
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     * @version $id$
     */

    namespace PhingShopware\Task\Condition\Plugin;

    use PhingShopware\Helper\KernelProvider,
        PhingShopware\Task\Base as BaseTask;

    require_once realpath(__DIR__ . '/../../Base.php');
    require_once realpath(__DIR__ . '/../../../Helper/KernelProvider.php');

    /**
     * Base Plugin-Condition.
     * @author blange <bjoern.lange@pixolith.de>
     * @package PhingShopware
     * @subpackage Task\Condition\Plugin
     */
    abstract class Base extends BaseTask
    {
        use KernelProvider;

        /**
         * The plugin id.
         * @var string
         */
        protected $plugin = '';

        /**
         * Caching of the plugin manager.
         * @var \Shopware\Components\Plugin\Manager
         */
        protected $pluginManager = null;

        /**
         * The value in which the result of the evaluation can be saved.
         * @var string
         */
        protected $property = '';

        /**
         * Returns the plugin in.
         * @return string
         */
        public function getPlugin()
        {
            return $this->plugin;
        } // function

        /**
         * Returns the value in which the result of the evaluation can be saved.
         * @return string
         */
        public function getProperty()
        {
            return $this->property;
        } // function

        /**
         * Returns the path to the shopware root.
         * @return string
         */
        protected function getSWPath()
        {
            return SW_PATH;
        } // function

        /**
         * Returns the found plugin from the plugin manager.
         * @return \Shopware\Models\Plugin\Plugin
         * @throws \BuildException
         */
        protected function getSWPlugin()
        {
            if (!$pluginName = $this->getPlugin()) {
                throw new \BuildException('plugin attribute is required', $this->location);
            } // if

            try {
                return $plugin = $this->getSWPluginManager()->getPluginByName($pluginName);
            } catch (\Exception $e) {
                throw new \BuildException(sprintf('Plugin by name "%s" was not found.', $pluginName), $this->location);
            } // catch
        } // function

        /**
         * Returns the plugin manager for shopware.
         * @return \Shopware\Components\Plugin\Manager
         * @throws \Exception
         */
        protected function getSWPluginManager() {
            if (!$this->pluginManager) {
                $this->pluginManager = $this->getSWKernel()->getContainer()->get('shopware.plugin_manager');
            } // if

            return $this->pluginManager;
        } // function

        /**
         * Saves the evaluation in the given property name.
         * @throws \BuildException If the property value is missing.
         */
        public function main()
        {
            if (!$property = $this->getProperty()) {
                throw new \BuildException("property attribute is required");
            } // if

            $this->getProject()->setProperty($property, $this->evaluate());
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
         * Sets the value in which the result of the evaluation can be saved.
         * @param string $property
         */
        public function setProperty($property)
        {
            $this->property = $property;
        } // function
    } // class