<?php
    require_once 'phing/Task.php';
// TODO Load autoloader showare
    class InstallSWDatabaseTask extends Task
    {
        /**
         * The host for the database.
         * @var string
         */
        protected $host;

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'installSW';

        /**
         * The init method: Do init steps.
         */
        public function init()
        {
            // nothing to do here
        } // function

        /**
         * The main entry point method.
         */
        public function main()
        {
            var_dump($this->getProject()->getProperty('SW_TASK'));
            echo 12;
        } // function

        /**
         * Sets the host for the database.
         * @param string $host
         * @return InstallSWDatabaseTask
         */
        public function setHost($host)
        {
            $this->host = $host;

            return $this;
        } // function
    } // class