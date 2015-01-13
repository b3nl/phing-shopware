<?php
    /**
     * ./src/InstallSWDemoData.php
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
    class InstallSWDemoDataTask extends AbstractSWTask
    {
        use SWDatabaseInstallTrait, SWDatabaseWriterTrait {
            SWDatabaseInstallTrait::getSWInstallApp insteadof SWDatabaseWriterTrait;
        }

        /**The version of the demo data.
         * @var string
         */
        protected $demoVersion = '4.3.0';

        /**
         * Shop the data be overwritten.
         * @var bool
         */
        protected $overwrite = false;

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'installSWDemoData';

        /**
         * The default url pattern to download the demo data.
         * @var string
         */
        protected $urlPattern = 'http://releases.s3.shopware.com/demo_%s.zip';

        /**
         * Returns the version for the demo data.
         * @return string
         */
        public function getDemoVersion()
        {
            return $this->demoVersion;
        } // function

        /**
         * URL-Pattern to download the demo data.
         * @return string
         */
        public function getUrlPattern()
        {
            return $this->urlPattern;
        } // function

        /**
         * Should the demo data be overwritten?
         * @return boolean
         */
        public function isOverwrite()
        {
            return $this->overwrite;
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
            $project     = $this->getProject();
            $demoArchive = $project->getBasedir() . DIRECTORY_SEPARATOR . $this->getDemoVersion() . '.zip';

            if ($this->isOverwrite() || !file_exists($demoArchive)) {
                set_time_limit(0);

                $copied = copy(
                    sprintf($this->getUrlPattern(), $this->getDemoVersion()),
                    $demoArchive
                );

                if (!$copied) {
                    throw new BuildException('Download of the demo data failed.');
                } // if
            } // if

            $archive = new ZipArchive();
            if (!$archive->open($demoArchive)) {
                throw new BuildException('Cannot open the demo zip.');
            } // if

            if (!$archive->extractTo($path = $project->getProperty('SW_PATH'))) {
                throw new BuildException('Demo cannot be extracted to the shopware path.');
            } // if

            $this->writeToSWDatabase($path . DIRECTORY_SEPARATOR . 'demo.sql');
        } // function


        /**
         * Sets the version for the demo data.
         * @param string $demoVersion
         */
        public function setDemoVersion($demoVersion)
        {
            $this->demoVersion = $demoVersion;
        } // function

        /**
         * Overwrite the demo data?
         * @param boolean $overwrite
         */
        public function setOverwrite($overwrite)
        {
            $this->overwrite = $overwrite;
        } // function

        /**
         * Sets the url pattern to download the demo data
         * @param string $urlPattern
         */
        public function setUrlPattern($urlPattern)
        {
            $this->urlPattern = $urlPattern;
        } // function
    } // class