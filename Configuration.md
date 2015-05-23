The plugin's global configuration file is a standard [YAML](http://yaml.org/spec/1.1/) file located:

**`plugins/Inquisitor/config.yml`**

It is recommended you don't edit this file directly. The plugin provides commands to alter all the settings in the file either in-game or from the console. If you do decide to edit the file by hand, you should not edit while the server is running since your changes could be overwritten when the server is stopped or the configuration is explicitly saved.

The configuration file is in multiple sections. Each section corresponds to a group of commands. See the [Commands](Commands.md) page for the commands to change these options.

If an option is not present in the configuration file, the indicated default is assumed.

## Global ##
These options exist in the "global" section and can be configured with the **inq set ...** command, unless otherwise noted.

| **Option** | **Type** | **Default** | **Version** | **Description** |
|:-----------|:---------|:------------|:------------|:----------------|
| debug      | boolean  | false       | All         | Specifies whether or not debugging is turned on. With debugging on, extra messages are displayed on the console. A lot of them. This can effect the performance of the MC server, so you shouldn't leave this on normally.|

## Database ##
These options exist in the "db" section and can be configured with the **inq db set ...** command, unless otherwise noted.

| **Option** | **Type** | **Default** | **Version** | **Description** |
|:-----------|:---------|:------------|:------------|:----------------|
| debug      | boolean  | false       | v2.0        | When set, displays all SQL queries being executed against the database. All queries use prepared statements for safety and speed. Because of this query parameters aren't displayed, so you won't see specifics in the queries. |
| url        | string   | //none//    | All         | The JDBC URL for the database. This URL will look something like `jdbc:mysql://localhost/dbname`. Substitute a different hostname and database name as necessary. If your MySQL server is using a non-default port, put a colon and the port number after the hostname (e.g., jdbc:mysql://localhost:4567/dbname).|
| username   | string   | //none//    | All         | The username to use when connecting to the database. This user **must** have CREATE, ALTER, DROP, INDEX, INSERT, UPDATE, DELETE, and SELECT privileges for the database.|
| password   | string   | //none//    | All         | The password to use when connecting to the database. The password is stored in the config file in clear text but is displayed as "`****`" at the console or in-game.|
| prefix     | string   | //none//    | All         | The table name prefix. If the plugin is configured to use a database that is being used by other plugins or applications, you might need to set this prefix to avoid table name conflicts.|
| shared     | boolean  | true        | All         | Is the database shared by other copies of this plugin on other Bukkit servers. This option should generally not be changed, even if the plugin is only running on a single server. This option effects how the plugin detects player's beds. It's complicated.|

## Statistics Engine ##
These options exist in the "stats" section and can be configured with the **inq stats set ...** command, unless otherwise noted.

| **Option** | **Type** | **Default** | **Version** | **Description** |
|:-----------|:---------|:------------|:------------|:----------------|
| debug      | boolean  | false       | v2.0        | If set, messages will be displayed about various details of the engine. |
| flushCheckInterval | integer  | 10000       | v2.0        | The interval, in milliseconds, between checks for cached statistic group instances that need to be flushed. |

### Saving Statistics ###
v2.0 of the plugin introduces a new statistics engine. The new engine differs from the old engine in 2 important ways: it's been generalized to be able to handle dynamic statistics for any purpose, and database updates happen in a background thread. The first feature will be more utilized in future plugin versions. The second feature means the main server thread is generally never blocked by database updates. It can still be blocked under specific cases, like when a player quits, since those updates need to be synchronous to make sure other things don't get out of whack.

## Player Statistics ##
These options exist in the "players" section and can be configured with the **inq players set ...** command, unless otherwise noted.

| **Option** | **Type** | **Default** | **Version** | **Description** |
|:-----------|:---------|:------------|:------------|:----------------|
| debug      | boolean  | false       | v2.0        | If set, message will be displayed about various player statistic details. |
| flushInterval | integer  | 60000       | v2.0        | The interval, in milliseconds, between flushing (saving to the database) cached player statistics. |
| bedCheckInterval | integer  | 20000       | All         | The interval, in milliseconds, between performing checks on players' beds to see if they still exist. |
| deleteAge  | integer  | -1          | v2.2        | The age, in milliseconds, after which player statistics will be **deleted** from the database. **This is in milliseconds, so be very careful!** A value of -1 disables this feature. |
| invalidPlayerNamePattern | string   | //none//    | v2.18       | A regular expression that matches player's name that SHOULDN'T have stats collected. This is useful if your server has plugins that create "fake" players for various reasons and those players shouldn't be stored in the database. The names of those players usually follow a pattern that can be matched by a regular expression. For example, the exclude all player names that start with "pvp" or "kill", use the pattern `"^(pvp|kill).*$"`. |

## Web Server ##
These options exist in the "webserver" section and can be configured with the **inq webserver set ...** command, unless otherwise noted. In addition, the **inq webserver add ...** and **inq webserver remove ...** commands can be used with the **playersColumns** and **playersRestrictColumns** options.

| **Option** | **Type** | **Default** | **Version** | **Description** |
|:-----------|:---------|:------------|:------------|:----------------|
| address    | string   | //none//    | v2.11       | The IP address to bind to. If not set, all local interfaces are bound to. Specify '**' or '-' to reset to an empty value.**|
| playersColumns | string   | //too long// | v2.0        | A comma delimited list of fields to show in the players list page. List the non-JSON fields from the [[Statistics](Player.md)] page you'd like to display by default, in the order you want them displayed. The "name" column is automatically included. To reset to the default, set the value to "**".**|
| playersSortColumn | string   | name        | v2.0        | The default field name by which to sort the players list. |
| playersSortDir | string   |  ASC        | v2.0        | The default sort direction for the players list. Valid values are "ASC" and "DESC" for ascending and descending, respectively. |
| playersRestrictColumns | string   | //too long// | v2.0        | A comma delimited list of fields that cannot be displayed in the players list by users using the column selection dialog. To reset to the default, set the value to "**".**|
| playersPageSize | integer  | 50          | v2.0        | The default number of players on each page of the players list. If more than this many players match the search criteria, the players list will automatically paginate and show a maximum of this many players on each page. |
| port       | integer  | 8080        | All         | The port to listen on for incoming connections. |
| upgradeWebRoot | boolean  | true        | v2.0        | When set, the plugin will overwrite existing web resources, even if they've been changed. Leave this set to true to automatically update the web pages displayed by the plugin. If you've made customizations to the templates, set this option to false so they don't get overwritten. |
| workers    | integer  | 5           | All         | The number of worker threads available to handle incoming requests. |