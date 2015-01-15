<?php
    /**
     * ./src/PhingShopware/Task/WriteToDatabase.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\DatabaseWriter;

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class WriteToDatabase extends Base
    {
        use DatabaseWriter;

        /**
         * The imported file.
         * @var string
         */
        protected $file = '';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'writeToSWDatabase';

        /**
         * Returns the import file.
         * @return string
         */
        public function getFile()
        {
            return $this->file;
        } // function

        /**
         * The main entry point method.
         *
         * CLI Tools not yet usable for large sql files!
         * @return void
         * @throws BuildException If there is something wrong.
         */
        public function main()
        {
            if ($this->getFile()) {
                $this->writeToSWDatabase($this->getFile());
            } // if
        } // function

        /**
         * Sets the import file.
         * @param string $file
         */
        public function setFile($file)
        {
            $this->file = $file;
        } // function
    } // class