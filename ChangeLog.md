v2.28
  * Fixed [issue 23](https://code.google.com/p/inquisitor-mc/issues/detail?id=23) [issue 24](https://code.google.com/p/inquisitor-mc/issues/detail?id=24) if you use a prefix for your tables, you need this update. PlayerOnJoin is failing and you are unable to view players data on the web page as a result.
  * Fixed [issue 21](https://code.google.com/p/inquisitor-mc/issues/detail?id=21) Removed support for upgrading from a version older than v2.14. Install v2.18 first to upgrade past 2.14, then install the latest version here.

v2.27
  * fix a bug that will cause inquisitor to fail after the first run...

v2.26:
  * Fix a bug that will cause inquisitor to fail on first run.

v2.25:
  * Added support for player UUIDs and name changes [issue 20](https://code.google.com/p/inquisitor-mc/issues/detail?id=20)

v2.24:
  * Fixed [issue 18](https://code.google.com/p/inquisitor-mc/issues/detail?id=18) for taming horses.
  * Added functionality in [issue 17](https://code.google.com/p/inquisitor-mc/issues/detail?id=17) to support relational urls.
  * Added more debugging code to help with resolving issues.

v2.23:
  * Fixed a new bug that would cause exceptions when fires are started.

v2.22:
  * Updated plugin.yml file with proper author references, links.
  * Added the ability to see a users Ender Chest contents.
  * Fixed [issue 12](https://code.google.com/p/inquisitor-mc/issues/detail?id=12) by including more exception management around integration with other plugins. This should take care of exceptions with onPlayerJoin and onPlayerQuit events. It will now just log a warning that the other plugin did not respond as expected but will not break Inquisitor.
  * Fixed [issue 15](https://code.google.com/p/inquisitor-mc/issues/detail?id=15) user showing back up in database even though they are deleted and properly in the invalidPlayerNamePattern option.
  * Fixed [issue 10](https://code.google.com/p/inquisitor-mc/issues/detail?id=10) with Total time being cleared for new users
  * Fixed [issue 13](https://code.google.com/p/inquisitor-mc/issues/detail?id=13) to add in additional sprite data to properly show more items
  * Moved a bunch of sprite data around to clean up methods, get ready for moving to use type names instead of deprecated type ids.
  * NOTE: the above 2 items include changes to the WebPages FTL files. If you have translated or modified those pages and are blocking updates you will need to manually merge them.

v2.21:
  * Appear to have fixed issue with some players having their total time reset
  * Added in the missing fish sprite data <- requires a manual merge of spriteData.ftl if you are blocking web updates.
  * Added additional exception management to log more details around onPlayerJoin and onPlayerQuit events to help track down this random bug. If you see these errors, please e-mail them to me so I can help track this down.

v2.20b:
  * Attempting to add support for Java 1.6 runtime environment

v2.20:
  * Fix some possible issues with mcstats by upgrading to version 7 of the framework.
  * Extended the length of the player address field to 40 to support IPv6 connections and the logging of data from such.
  * Add images for items added in 1.6 and 1.7
  * Add support for new enchantments in 1.7
  * Add support for new potions in 1.7
  * NOTE: The above 3 items include changes to the WebPages FTL files. If you have translated or modified those pages and are blocking updates you will need to manually merge them.
  * Updated version checker to use new code.google.com site
  * Updated plugin.yml to include soft dependency on vault to ensure proper plugin load order every time.
  * Updated included Freemarker framework from 2.3.19 to 2.3.20

v2.19:
  * Fixes integration with bukkit 1.7 API
  * Adds support for Horse Riding metric