<?php
    /**
     * ./src/PhingShopware/Helper/KernelProvider.php
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Helper
     * @version $id$
     */
    
    namespace PhingShopware\Helper;
    use Shopware\Kernel;
    
    /**
     * Returns and caches the shopware kernel.
     * @author blange <code@wbl-konzept.de>
     * @package PhingShopware
     * @subpackage Helper
     * @version $id$
     */
    trait KernelProvider
    {
        /**
         * The shopware kernel.
         * @var null|\Shopware\Kernel
         */
        protected static $kernel = null;

        /**
         * Returns the path to the shopware root.
         * @return string
         */
        abstract protected function getSWPath(); // function

        /***
         * Speaking to the shopware cli.
         * @return array
         */
        protected function getSWKernel()
        {
            if (!static::$kernel) {
                // shopware "destroys" the include path
                $originalIncludePath = get_include_path();
                require_once rtrim($this->getSWPath(), '/\\') . DIRECTORY_SEPARATOR . 'autoload.php';
                $newIncludePath = get_include_path();

                set_include_path(rtrim($originalIncludePath, PATH_SEPARATOR) . PATH_SEPARATOR . $newIncludePath);

                static::$kernel = new Kernel(
                    $environment = getenv('ENV') ?: getenv('REDIRECT_ENV') ?: 'production',
                    $environment !== 'production'
                );

                static::$kernel->boot();
            } // if

            return static::$kernel;
        } // function
    } // trait