<?php
/**
 * ./src/WriteToSWDatabaseTask.php
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
class WriteToSWDatabaseTask extends AbstractSWTask
{
    use SWDatabaseWriterTrait;

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
        $this->writeToSWDatabase($this->getFile());
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