<?php
    /**
     * ./src/PhingShopware/Task/InstallDemoData.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */

    namespace PhingShopware\Task;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    use PhingShopware\Helper\DatabaseInstaller,
        PhingShopware\Helper\DatabaseWriter;

    /**
     * Installs the shopware database.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @version $id$
     */
    class InstallDemoData extends Base
    {
        use DatabaseInstaller, DatabaseWriter {
            DatabaseInstaller::getSWInstallApp insteadof DatabaseWriter;
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
         * Should the process stop on error?
         * @var bool
         */
        protected $stopOnError = true;

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
         * Copies the directory to the shopware directory.
         *
         * We us a very low api to prevent errors for example with vagrant (protocol error).
         * @param string $sourceDir
         * @throws \BuildException
         */
        public function copyContents($sourceDir)
        {
            $paths = new \RecursiveIteratorIterator(
                new \RecursiveDirectoryIterator($sourceDir, \FilesystemIterator::SKIP_DOTS),
                \RecursiveIteratorIterator::SELF_FIRST
            );

            /** @var \SplFileInfo $pathObject */
            foreach($paths as $path => $pathObject) {
                $error        = '';
                $relativePath = str_replace($sourceDir, '', $path);

                if (!file_exists($newPath = SW_PATH . $relativePath)) {
                    if ($pathObject->isDir()) {
                        if (!mkdir($newPath, 0777)) {
                            $error = 'Dir cannot be created in the shopware path. (' . $relativePath . ')';
                        } // if
                    } else if (!@copy($path, SW_PATH . $relativePath)) {
                        $error = 'File cannot be copied to the shopware path. (' . $relativePath . ')';
                    } // else
                } // if

                if ($error) {
                    if ($this->isStopOnError()) {
                        $this->log($error, \Project::MSG_WARN);
                    } else {
                        throw new \BuildException($error);
                    } // if
                } // if
            } // foreach
        } // function

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
        }

        /**
         * Should the process stop on error?
         * @return boolean
         */
        public function isStopOnError()
        {
            return $this->stopOnError;
        } // function

        /**
         * The main entry point method.
         *
         * CLI Tools not yet usable for large sql files!
         * @return void
         * @throws \BuildException If there is something wrong.
         */
        public function main()
        {
            $project = $this->getProject();
            $demoArchive = $project->getBasedir() . DIRECTORY_SEPARATOR . $this->getDemoVersion() . '.zip';

            if ($this->isOverwrite() || !file_exists($demoArchive)) {
                set_time_limit(0);

                $copied = copy(
                    sprintf($this->getUrlPattern(), $this->getDemoVersion()),
                    $demoArchive
                );

                if (!$copied) {
                    throw new \BuildException('Download of the demo data failed.');
                } // if
            } // if

            $archive = new \ZipArchive();
            if (!$archive->open($demoArchive)) {
                throw new \BuildException('Cannot open the demo zip.');
            } // if

            $sTmpDir = sys_get_temp_dir() . DIRECTORY_SEPARATOR . uniqid('deploy_');

            if (!$archive->extractTo($sTmpDir)) {
                throw new \BuildException('Demo cannot be extracted to the tmp dir.');
            } // if

            $this->copyContents($sTmpDir);

            $this->writeToSWDatabase(SW_PATH . DIRECTORY_SEPARATOR . 'demo.sql');
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
         * Should the process stop on error?
         * @param boolean $stopOnError
         */
        public function setStopOnError($stopOnError)
        {
            $this->stopOnError = $stopOnError;
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