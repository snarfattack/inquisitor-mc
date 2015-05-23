When enabled, the built-in web server serves a number of web pages to visitors. The web pages are generated dynamically from templates stored in files under the `<plugins>`/Inquisitor/web-root directory, mainly in the /resources sub-directory. Template files end with an "ftl" extension and use [FreeMarker](http://freemarker.sourceforge.net/) markup language ([documentation](http://freemarker.sourceforge.net/docs/index.html)).

You are free to change the templates in whatever way you see fit, but you must understand the use of the web server option, "upgradeWebRoot", described on the [Configuration](Configuration.md) page. The default for this option is "true", so upgrading the plugin will result in **_all your customized templates being restored to defaults_**. If you have customizations you'd like to preserve, set this option to "false". But then you may miss out on updates to the web pages when new plugin versions are released. You'll have to reconcile that yourself.

## Templates ##

These are the template files and what purpose they serve.

### docEnd.ftl ###

Provides the end of every page.

### docStart.ftl ###

Provides the beginning of every page. Put things like CSS and javascript links here.

### inventory.ftl ###

Contains macros used to generate the inventory icons on the player page.

### macros.ftl ###

Contains general purpose macros used in a variety of places.

### player.ftl ###

Provides the main player statistics page.

### playerNotFound.ftl ###

Provides a message when a particular player cannot be found in the database.

### players.ftl ###

Provides a list of players, either from a search, or all the players in the database.

### spriteData.ftl ###

Contains a definition used for extracting sprite images from the main sprites image.

### sprites.ftl ###

Contains macros used for extracting sprite images from the main sprites image.