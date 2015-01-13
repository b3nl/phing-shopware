<?php
/**
 * ./src/WriteSWConfigTask.php
 * @author blange <code@wbl-konzept.de>
 * @package phingShopware
 * @version $id$
 */

require_once __DIR__ . DIRECTORY_SEPARATOR . 'AbstractSWTask.php';

/**
 * Writes the shopware config file.
 * @author blange <code@wbl-konzept.de>
 * @package phingShopware
 * @version $id$
 */
class WriteSWConfigTask extends AbstractSWTask
{
    /**
     * The host for the database.
     * @var string
     */
    protected $dbHost = '';

    /**
     * The database name.
     * @var string
     */
    protected $dbName = '';

    /**
     * The database password.
     * @var string
     */
    protected $dbPassword = '';

    /**
     * The database port.
     * @var string
     */
    protected $dbPort = '';

    /**
     * The database socket.
     * @var string
     */
    protected $dbSocket = '';

    /**
     * The database user.
     * @var string
     */
    protected $dbUser = '';

    /**
     * The SW Component to install the system.
     * @var null|Shopware\Recovery\Install\Database
     */
    protected $installSWApp = null;

    /**
     * Taskname for logger
     * @var string
     */
    protected $taskName = 'installSWDatabase';

    /**
     * Returns the database host.
     * @return string
     */
    protected function getHost()
    {
        return $this->dbHost;
    } // function

    /**
     * Returns the class to install shopware.
     * @return null|\Shopware\Recovery\Install\Database
     */
    protected function getSWInstallApp()
    {
        if ($this->installSWApp) {
            $this->installSWApp = new Shopware\Recovery\Install\Database(
                array(
                    "user" => $this->getUser(),
                    "password" => $this->getPassword(),
                    "host" => $this->getHost(),
                    "port" => $this->getPort(),
                    "socket" => $this->getSocket(),
                    "database" => $this->getName(),
                ),
                $this->getProject()->getProperty('SW_PATH')
            );
        } // if

        return $this->installSWApp;
    } // function

    /**
     * Returns the database name.
     * @return string
     */
    protected function getName()
    {
        return $this->dbName;
    } // function

    /**
     * Returns the database password.
     * @return string
     */
    protected function getPassword()
    {
        return $this->dbPassword;
    } // function

    /**
     * Returns the database port.
     * @return string
     */
    protected function getPort()
    {
        return $this->dbPort;
    } // function

    /**
     * Returns the database socket.
     * @return string
     */
    protected function getSocket()
    {
        return $this->dbSocket;
    } // function

    /**
     * Returns the database user.
     * @return string
     */
    protected function getUser()
    {
        return $this->dbUser;
    } // function

    /**
     * The main entry point method.
     * @return void
     */
    public function main()
    {
        $oInstall = $this->getSWInstallApp();

        $oInstall->setDatabase();

        if ($sError = $oInstall->getError()) {
            throw new BuildException($sError);
        } // if

        $oInstall->writeConfig();

        if ($sError = $oInstall->getError()) {
            throw new BuildException($sError);
        } // if
    } // function

    /**
     * Sets the host for the database.
     * @param string $host
     * @return WriteSWConfigTask
     */
    public function setHost($host)
    {
        $this->dbHost = $host;

        return $this;
    } // function

    /**
     * Sets the name for the database.
     * @param string $value
     * @return WriteSWConfigTask
     */
    public function setName($value)
    {
        $this->dbName = $value;

        return $this;
    } // function

    /**
     * Sets the password for the database.
     * @param string $value
     * @return WriteSWConfigTask
     */
    public function setPassword($value)
    {
        $this->dbPassword = $value;

        return $this;
    } // function

    /**
     * Sets the port for the database.
     * @param string $value
     * @return WriteSWConfigTask
     */
    public function setPort($value)
    {
        $this->dbPort = $value;

        return $this;
    } // function

    /**
     * Sets the socket for the database.
     * @param string $value
     * @return WriteSWConfigTask
     */
    public function setSocket($value)
    {
        $this->dbSocket = $value;

        return $this;
    } // function

    /**
     * Sets the user for the database.
     * @param string $value
     * @return WriteSWConfigTask
     */
    public function setUser($value)
    {
        $this->dbUser = $value;

        return $this;
    } // function
} // class