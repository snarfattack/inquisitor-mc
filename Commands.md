All commands listed below must be prefixed with "inq" in the console, and "/inq" in the client chat. All commands must be entered on a single line.

  * Arguments surrounded by **<** and **>** represent values you must supply, like player names.
  * Arguments surrounded by **[** and **]** represent optional arguments.
  * Arguments separated by **||** represent choices; use the argument on either side of the pipe.
  * All other command text is to be entered literally. However...

The plugin tries very hard to understand what you want when processing commands. For instance:

  * It supports partial command and option recognition, independent of case. This means that incomplete commands and arguments may be provided and the plugin will still understand what you want in most cases.
  * If any command argument requires the uses of spaces, surround the entire argument with double quotes (").

## General ##

| **Command** | **Console** | **Client** | **Permission** | **Version** | **Description** |
|:------------|:------------|:-----------|:---------------|:------------|:----------------|
|`help [<pageno>]`|X            |X           |//none//        |All          |Lists the commands available in the current context. The output will be paginated when used from the client. Specify a page number to see pages beyond the first.|
|`get <option>|*`|X            |X           |inq.option.get.`<option>`|All          |Displays the value of one or more global options. The option can be a regular expression to match multiple options. Only the options a player has permission to read will be displayed.|
|`set <option> <value>`|X            |X           |inq.option.set.`<option>`|All          |Sets a global option. See [Configuration](Configuration.md) for more information. |
|`status`     |X            |X           |//none//        |v2.0         | This is the equivalent of running the status command for each subsystem that supports it. |

## Database ##

| **Command** | **Console** | **Client** | **Permission** | **Version** | **Description** |
|:------------|:------------|:-----------|:---------------|:------------|:----------------|
|`db get <option>|*`|X            |X           |inq.db.option.get.`<option>`|All          |Displays the value of one or more database options. The option can be a regular expression to match multiple options. Only the options a player has permission to read will be displayed.|
|`db set <option> <value>`|X            |X           |inq.db.option.set.`<option>`|All          |Sets a database option. See [Configuration](Configuration.md) for more information.|
|`db status`  |X            |X           |inq.db.status   |v2.0         | Displays status information about the database connection. |

## Statistics Engine ##

| **Command** | **Console** | **Client** | **Permission** | **Version** | **Description** |
|:------------|:------------|:-----------|:---------------|:------------|:----------------|
|`stats flush [<group> [<key>]]`|X            |X           |inq.stats.flush |v2.0         | Flushes a statistics group's cached instances to the database. If no key is specified, flushes all cached statistics in the group. If no group is specified, flushes all groups. The only valid group name is currently "players". Keys in the players group are player names. |
|`stats get <option>|*`|X            |X           |inq.stats.option.get.`<option>`|v2.0         | Displays the value of one or more statistics engine options. The option can be a regular expression to match multiple options. Only the options a player has permission to read will be displayed.|
|`stats set <option> <value>`|X            |X           |inq.stats.option.set.`<option>`|v2.0         | Sets a statistics engine option. See [Configuration](Configuration.md) for more information.|
|`stats status`|X            |X           |inq.stats.status|v2.0         | Displays status information about the statistics engine. |

## Player Statistics ##

| **Command** | **Console** | **Client** | **Permission** | **Version** | **Description** |
|:------------|:------------|:-----------|:---------------|:------------|:----------------|
|`players get <option>|*`|X            |X           |inq.players.option.get.`<option>`|All          |Displays the value of one or more player statistics options. The option can be a regular expression to match multiple options. Only the options a player has permission to read will be displayed.|
|`players set <option> <value>`|X            |X           |inq.players.option.set.`<option>`|All          |Sets a player statistics option. See [Configuration](Configuration.md) for more information.|

## Web Server ##

| **Command** | **Console** | **Client** | **Permission** | **Version** | **Description** |
|:------------|:------------|:-----------|:---------------|:------------|:----------------|
|`webserver enable`|X            |X           |inq.webserver.enable|All          |Enables the built-in web server and creates the web-root directory if it's not present.|
|`webserver disable`|X            |X           |inq.webserver.disable|All          |Disables the built-in web server.|
|`webserver get <option>|*`|X            |X           |inq.webserver.option.get.`<option>`|All          |Displays the value of one or more web server options. The option can be a regular expression to match multiple options. Only the options a player has permission to read will be displayed.|
|`webserver set <option> <value>`|X            |X           |inq.webserver.option.set.`<option>`|All          |Sets a web server option. See [Configuration](Configuration.md) for more information.|
|`webserver add <option> <value>`|X            |X           |inq.webserver.option.set.`<option>`|All          |Adds the specified value to the a web server option. See [Configuration](Configuration.md) for more information.|
|`webserver remove <option> <value>`|X            |X           |inq.webserver.option.set.`<option>`|All          |Removes the specified value from a web server option. See [Configuration](Configuration.md) for more information.|
|`webserver status`|X            |X           |inq.webserver.status|v2.0         | Displays status information about the web server. |