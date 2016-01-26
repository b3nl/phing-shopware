# phing-shopware

This (composer) package enables additional phing tasks for your phing automatizations.

## Requirements

1. **The tasks require a property SW_PATH which sets the shopware root path.**
2. A property "language" should exist in the phing project aswell.

## Tasks

* activateSWPlugin(PhingShopware\Task\ActivatePlugin): Calls the shopware cli to activate a plugin with the given id.
  * plugin: Plugin Id
  * [ignore: (true|false) - Ignore a possible error?]
* callSWCLI(PhingShopware\Task\CallCLI): Calls the shopware cli with the given command.
  * command: The command for the cli.
  * [consoleOutput: The name of the var, which will contain the output.]
  * [returnOutput: The name of the var, which will contain the return value.]
* clearSWCache(PhingShopware\Task\ClearCache): Calls the shell script to empty the cache directory of shopware.
* controlSWPlugin(PhingShopware\Task\ControlPlugin): Handles basic plugin operations for your shopware shop.
  * [activate: (true|false) - Activates or deactivates the module if you provide this parameter.]
  * [ignore: (true|false) - Should errors be ignored?]
  * [install: (true|false) - Install the plugin first?]
  * [[Possible Child-Properties](https://www.phing.info/docs/guide/trunk/PropertyTask.html)]
  * plugin: The ID of the plugin.]
  * [update: (true|false) - Update the plugin?]
* handleSWMaintenance(PhingShopware\Task\HandleMaintenance): Activate or deactive the maintenance mode?
  * enable: (true|false)
  * [shopScope: For which scope?]
* ifSWPlugin(PhingShopware\Task\IfPlugin): Custom if-Check for plugin states
  * existsSWPlugin(PhingShopware\Task\Condition\Plugin\IsExisting): Does the plugin exist?
    * plugin: The ID of the plugin.
  * isSWPluginActive(PhingShopware\Task\Condition\Plugin\IsActive): Is the plugin active?
    * plugin: The ID of the plugin.
  * isSWPluginInstalled(PhingShopware\Task\Condition\Plugin\IsInstalled): Is the plugin active?
    * plugin: The ID of the plugin.     
  * SWPluginNeedsUpdate(PhingShopware\Task\Condition\Plugin\IsInstalled): Needs the plugin an update?
    * plugin: The ID of the plugin.        
* installSWDatabase(PhingShopware\Task\InstallDatabase): Fetches the typical database from your locally installed dev release and installs the shopware database.
* installSWDemoData(PhingShopware\Task\InstallDemoData): Tries to download a demo file from http://releases.s3.shopware.com/demo_%s.zip and "unzips" it to the shop directory.
  * [demoVersion: A semantic versioning string for the demo data version]
  * [overwrite: (true|false) - Should the new demo zip overwrite the old one?]
  * [stopOnError: (true|false) - Should a download error stop the process?]
  * [urlPattern: Which url pattern should be used?]
* saveSWConfigData(PhingShopware\Task\SaveConfigData): Saves the typical and required config data in database (adminLanguage, adminName, ... Please review the example xml).
* writeSWConfigFile(PhingShopware\Task\WriteConfigFile): Takes the config and writes the typical shopware config file.
* writeToSWDatabase(PhingShopware\Task\WriteToDatabase): Executes given queries in the database.
  * file: The path to a sql file.
  * [withParse: (true|false) "Parse" the given file? Parsing means, separating the queries with ;\r\n -> ;\n]

You can include this tasks like this:

> To register the custom task with Phing, the taskdef element (line 5) is used. See Section B.40, “TaskdefTask ” for a more detailed explanation. Optionally, before the taskdef element, the includepath element adds a path to PHP's include path. This is of course only required if the mentioned path isn't already on the include path. See Section B.24, “IncludePathTask ” for a more detailed explanation.
(https://www.phing.info/docs/guide/trunk/ch06s06.html)

1. [includepath](https://www.phing.info/docs/guide/trunk/IncludePathTask.html)
2. [taskdef](https://www.phing.info/docs/guide/trunk/TaskdefTask.html)

### Example

```xml
<?xml version="1.0" ?>

<project name="test" basedir="." default="echoPossibleTargets">
    <!-- Needed globally in some tasks! -->
    <property name="database_host" value="your database host" />
    <property name="database_name" value="your database name" />
    <property name="database_password" value="your database password" />
    <property name="database_port" value="your database port" />
    <property name="database_user" value="rooyour database user" />

    <property name="language" value="your shop language (de|en)" />
    <property name="SW_PATH" value="The path to your shopware dir." override="true" />

    <includepath classpath="src" />
    <taskdef file="etc/phingShopwareTasks.properties" />

    <target name="echoPossibleTargets">
        <echo>Please use one of this targets: prepareLocalEnv</echo>
    </target>

    <target name="prepareLocalEnv">
        <writeSWConfigFile />
        <installSWDatabase />
        <saveSWConfigData
                adminLanguage="lang" adminName="your backend name" adminEmail="your admin mail"
                adminPassword="your admin password" adminUser="your admin user name"
                configMail="the mail of the shop" shopCurrency="the default shop currency"
                shopLanguage="the default shop language" shopHost="your shop host" />

        <!-- Some plugin processing -->
        <callSWCLI command="sw:plugin:refresh" />
        <ifSWPlugin>
            <existsSWPlugin plugin="AdvancedMenu" />
            <then>
                <echo>AdvancedMenu exists.</echo>
            </then>
            <else>
                <echo>AdvancedMenu does not exist.</echo>
            </else>
        </ifSWPlugin>

        <ifSWPlugin>
            <isSWPluginInstalled plugin="AdvancedMenu" />
            <then>
                <echo>AdvancedMenu allready installed.</echo>
            </then>
            <else>
                <controlSWPlugin install="true" plugin="AdvancedMenu" />
            </else>
        </ifSWPlugin>

        <ifSWPlugin>
            <isSWPluginActive plugin="AdvancedMenu" />
            <then>
                <echo>AdvancedMenu allready activated.</echo>
            </then>
            <else>
                <controlSWPlugin activate="true" plugin="AdvancedMenu">
                    <!--<property file="test.properties" /> -->
                </controlSWPlugin>
            </else>
        </ifSWPlugin>
    </target>
</project>
```
