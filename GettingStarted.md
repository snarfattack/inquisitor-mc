## Assumptions ##
  * Bukkit or Spigot is already installed as your Minecraft Server and has been started at least once to generate the base folder structure, including the plugin folder.
  * If used, Vault is installed and configured.
  * MySQL is installed and running.
  1. At least one DB Schema exists
  1. User account and password are created and known
  1. JDBC drivers are installed

## Download the Plugin ##
[Download](https://drive.google.com/#folders/0BxZ8iKSazSneYnd0dTFFNjBnMzg) the latest version of Inquisitor. Save the Inquisitor jar file to your minecraft/plugins folder. Make sure you have only one Inquisitor jar file in that folder. Multiple jar files for the same plugin will cause failures.

Start or restart your Minecraft Server and get ready to configure from the console.

## Create a database ##
You must either create a new MySQL database or use an existing one. In either case, a MySQL user must exist will the following permissions for the database:

  * CREATE
  * ALTER
  * INDEX
  * DROP
  * SELECT
  * INSERT
  * UPDATE
  * DELETE

Gather and make a note of the following information:

  * MySQL server hostname or IP address
  * MySQL port number (if MySQL is not using the default port of 3306)
  * Database name
  * User name with the privileges listed above for the database.
  * Password
  * Prefix (Not required unless sharing a DB)

If the database will not be used exclusively by the plugin, you should decide on a table name prefix to make sure the plugin's tables don't conflict with existing tables. If you decide to use a prefix, make a note of it as well.

For the commands listed in the following steps, the following values will be used. Your values will probably be different, so make adjustments as necessary.

  * server: **localhost**
  * port: **3306** (default)
  * database name: **inquisitor**
  * user name: **bukkit**
  * password: **very\_clever**
  * prefix: **inq**

## Configure the plugin: database ##

At the Server console, issue the following commands, making adjustments for the actual values in your environment.

```
inq db set prefix inq
inq db set url jdbc:mysql://localhost:3306/inquisitor
inq db set username bukkit
inq db set password very_clever
```

The plugin should report successfully connecting to the database after the last command. At this point, the plugin will also start statistics collection and records will be written to the database periodically.

## Configure the plugin: web server ##

If you'd like to use the built-in web server to view player statistics, you must configure and enable it. The configuration defaults should be adequate for a simple installation but may need to be adjusted for servers with a large number of users. Use the following command to enable to web server:

```
inq webserver enable
```

Once successfully enabled and assuming you haven't changed the default listen address, open a web browser and navigate to **http://localhost:8080**.

## Going further ##

Read the [Commands](Commands.md) and [Configuration](Configuration.md) pages for more information and options.