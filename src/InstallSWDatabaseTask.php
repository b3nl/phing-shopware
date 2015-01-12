<?php
    /**
     * ./src/InstallSWDatabaseTask.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'AbstractSWTask.php';

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class InstallSWDatabaseTask extends AbstractSWTask
    {
        /**
         * The main entry point method.
         */
        public function main()
        {
            $sPath = $this->getProject()->getProperty('SW_PATH');

            exec(
                'php ' . $sPath . '/bin/console dbal:import ' . $sPath . '/recovery/install/data/sql/sw4_clean.sql',
                $aReturn,
                $bReturn
            );

            if ($bReturn) {
                throw new BuildException(implode("\n", $aReturn));
            } // if
        } // function
    } // class