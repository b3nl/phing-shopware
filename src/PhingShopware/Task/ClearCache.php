<?php
/**
 * ./src/PhingShopware/Task/ClearCache.php
 * @author blange <code@wbl-konzept.de>
 * @package phingShopware
 * @subpackage Task
 * @version $id$
 */

namespace PhingShopware\Task;

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
    protected $taskName = 'controlSWPlugin';

    /**
     * Cleans the cache with the shopware shell script.
     */
    public function main()
    {
        exec('bash ' . SW_PATH . '/cache/clear_cache.sh', $output, $return);

        if (!$return) {
            $this->log('Cache cleared', \Project::MSG_INFO);
        } // if
    } // function
} // class