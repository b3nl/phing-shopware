<?php
    /**
     * ./src/SWDatabaseWriterTrait.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    
    /**
     * Trait to provide the basic install object for shopware.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    trait SWDatabaseWriterTrait
    {
        /**
         * Returns the class to install shopware.
         * @param  string $file Filename to the database file.
         * @return null|\Shopware\Recovery\Install\Database
         */
        public function writeToSWDatabase($file)
        {
            $return = false;

            $install = $this->getSWInstallApp();

            $install->setDatabase();
            $db = $install->getDatabase();

            if ($error = $install->getError()) {
                throw new BuildException('database error: ' . $error);
            } // if

            $dump = new \Shopware\Recovery\Common\Dump($file);

            foreach ($dump as $query) {
                if ($query) {
                    set_time_limit(0);

                    try {
                        $db->query($query);
                    } catch (PDOException $exception) {
                        throw new BuildException($exception->getMessage(), $exception->getCode());
                    } // catch
                } // if
            } // foreach

            return $return;
        } // function
    } // trait