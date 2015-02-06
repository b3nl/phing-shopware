<?php
    /**
     * ./src/PhingShopware/Task/WriteToDatabase.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\DatabaseWriter;

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
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
         * Parses the file before importing.
         * @var bool
         */
        protected $withParse = false;

        /**
         * Returns the import file.
         * @return string
         */
        public function getFile()
        {
            return $this->file;
        }

        /**
         * Should the file be parsed previously?
         * @return boolean
         */
        public function isWithParse()
        {
            return $this->withParse;
        }

        /**
         * The main entry point method.
         *
         * CLI Tools not yet usable for large sql files!
         * @return void
         * @throws \BuildException If there is something wrong.
         */
        public function main()
        {
            if ($file = $this->getFile()) {
                if ($this->isWithParse()) {
                    file_put_contents(
                        $newFile = tempnam(sys_get_temp_dir(), 'sqlparse'),
                        str_replace(";\r\n", ";\n", file_get_contents($file)) . "\n"
                    );

                    $file = $newFile;
                } // if

                $this->writeToSWDatabase($file);
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

        /**
         * Should the file be parsed previously?
         * @param boolean $withParse
         */
        public function setWithParse($withParse)
        {
            $this->withParse = $withParse;
        } // function
    } // class