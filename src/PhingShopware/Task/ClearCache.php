<?php
    /**
     * ./src/PhingShopware/Task/ClearCache.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Clears the shopware cache.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */
    class ClearCache extends Base
    {
        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'clearSWCache';

        /**
         * Cleans the cache with the shopware shell script.
         */
        public function main()
        {

            $actualCwd = getcwd();

            // Switch for new shopware versions.
            $clearScript = SW_PATH . '/cache/clear_cache.sh';

            if (!file_exists($clearScript)) {
                $clearScript = SW_PATH . '/var/cache/clear_cache.sh';
            } // if

            // Prevent problems, so siwtch the working problems.
            chdir(dirname(realpath($clearScript)));
            exec('bash ' . basename($clearScript), $output, $return);
            chdir($actualCwd);

            if (!$return) {
                $this->log('Cache cleared', \Project::MSG_INFO);
            } // if
        } // function
    } // class
