<?php
    /**
     * ./src/PhingShopware/Helper/CLICaller.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Helper
     * @version $id$
     */

    namespace PhingShopware\Helper;

    /**
     * Calls the shopware CLI.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Helper
     * @version $id$
     */
    trait CLICaller
    {
        /***
         * Speaking to the shopware cli.
         * @param string $cmd The shopware cli command.
         * @return array
         */
        protected function clu2cli($cmd)
        {
            exec('php ' . SW_PATH . '/bin/console ' . $cmd, $output, $return);

            return array($output, $return);
        } // function
    } // class