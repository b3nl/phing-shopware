<?php
    /**
     * ./src/PhingShopware/Task/CallCLI.php
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */

    namespace PhingShopware\Task;

    use PhingShopware\Helper\CLICaller;

    require_once __DIR__ . DIRECTORY_SEPARATOR . 'Base.php';

    /**
     * Calls the shopware CLI.
     * @author blange <code@wbl-konzept.de>
     * @package phingShopware
     * @subpackage Task
     * @version $id$
     */
    class CallCLI extends Base
    {
        use CLICaller;

        /**
         * The called shopware command.
         * @var string
         */
        protected $command = '';

        /**
         * The name of the possible console output property.
         * @var string
         */
        protected $consoleOutput = '';

        /**
         * The name of the possible return property.
         * @var string
         */
        protected $returnProperty = '';

        /**
         * Taskname for logger
         * @var string
         */
        protected $taskName = 'callSWCLI';

        /**
         * Returns the shopware cli command.
         * @return string
         */
        public function getCommand()
        {
            return $this->command;
        } // function

        /**
         * Returns the name of the possible console output property.
         * @return string
         */
        public function getConsoleOutput()
        {
            return $this->consoleOutput;
        } // function

        /**
         * Returns the name of the return property.
         * @return string
         */
        public function getReturnProperty()
        {
            return $this->returnProperty;
        } // function

        /**
         * Calls the shopware cli.
         * @return void
         */
        public function main()
        {
            $this->log($this->getCommand());

            $project   = $this->getProject();
            $shellCall = $this->clu2cli($this->getCommand());

            if ($output = $this->getConsoleOutput()) {
                $this->log($outputContent = implode("\n", reset($shellCall)), \Project::MSG_DEBUG);

                $project->setProperty($output, $outputContent);
            } // if

            if ($return = $this->getReturnProperty()) {
                $project->setProperty($return, next($shellCall));
            } // if
        } // function

        /**
         * Sets the shopware cli command.
         * @param string $command
         * @return void
         */
        public function setCommand($command)
        {
            $this->command = $command;
        } // function

        /**
         * Sets the name of the possible console output property.
         * @param string $consoleOutput
         * @return void
         */
        public function setConsoleOutput($consoleOutput)
        {
            $this->consoleOutput = $consoleOutput;
        } // function

        /**
         * Sets the returns property.
         * @param string $returnProperty
         * @return void
         */
        public function setReturnProperty($returnProperty)
        {
            $this->returnProperty = $returnProperty;
        } // function
    } // class