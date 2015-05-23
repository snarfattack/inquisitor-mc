The information and statistics described on this page are collected for each player on the server.

### Data Types ###
Most of the player information and statistics are stored directly in the specified database fields as the indicated SQL data types (integer, varchar, etc). Some of the data is stored in SQL text fields, encoded as a JSON string. These are indicated by a data type of "JSON". These fields allow for a more dynamic storage model but make it difficult or impossible to query for specific data values in those fields. There is also a database field, "mapped", which also contains JSON encoded data comprised of all the statistics marked as MAPPED.

### Schema ###

| **Field** | **Type** | **Version** | **Description** |
|:----------|:---------|:------------|:----------------|
| name      | varchar  | All         | Player's name.  |
| displayName | varchar  | All         | Player's display name. |
| address   | varchar  | All         | Player's last client address. |
| inventory | JSON     | All         | Player's inventory. The JSON is an array of objects, in slot order. Each object describes the item in the corresponding slot. Each item's keys are "type", "data", "amount", "durability", "enchantments", and "tag".|
| armor     | JSON     | All         | Player's armor. See "inventory" for encoding details. |
| ender     | JSON     | v2.22+      | Player's Ender chest inventory. See "inventory" for encoding details. |
| heldItemSlot | integer  | All         | The inventory slot number of which item is being held. |
| health    | integer  | All         | Player's health, from 0 to 20. |
| remainingAir | integer  | All         | Player's remaining air from 0 to 300. |
| fireTicks | integer  | All         | Player's remaining fire ticks from -20 to 0. |
| foodLevel | integer  | All         | Player's food level from 0 to 20. |
| exhaustion | float    | All         | Player's exhaustion. |
| saturation | float    | All         | Player's saturation. |
| gameMode  | varchar  | All         | Last game mode. |
| level     | integer  | All         | Experience level. |
| exp       | float    | All         | Amount of experience gained toward next level as a percentage. |
| totalExperience | integer  | All         | Total experience points. |
| potionEffects | JSON     | All         | Current potion effects encoded as an array of strings. |
| server    | varchar  | All         | The name of the server the player was last on. |
| world     | varchar  | All         | The name of the world the player was last in. |
| coords    | varchar  | All         | The coordinates where the player was last. The individual ordinates are separated by commas. |
| groups    | JSON     | All         | The groups the player belongs to. This is only available if the Vault plugin is installed and providing permissions integration. |
| money     | double   | v2.1+       | The amount of money the player has. This is only available if the Vault plugin is installed and providing economy integration. |
| bedServer | varchar  | All         | The name of the server where the player's bed is located. |
| bedWorld  | varchar  | All         | The name of the world where the player's bed is located. |
| bedCoords | varchar  | All         | The coordinates of the player's bed. The individual ordinates are separated by commas. |
| joins     | integer  | All         | Number of times the player has joined. |
| firstJoin | timestamp | All         | The date and time of the first join. |
| lastJoin  | timestamp | All         | The date and time of the last join. |
| quits     | integer  | All         | Number of times the player has quit. |
| lastQuit  | timestamp | All         | The date and time of the last quit. |
| kicks     | integer  | All         | Number of times the player has been kicked. |
| lastKick  | timestamp | All         | The date and time of the last kick. |
| lastKickMessage | varchar  | All         | The message sent to the player during the last kick. |
| deaths    | integer  | All         | Number of times the player has died. |
| deathCauses | MAPPED   | All         | The causes of the player's deaths. This is a JSON object where each key is a reason and the corresponding value is a count. |
| lastDeath | timestamp | All         | The date and time the player last died. |
| lastDeathMessage | varchar  | All         | The message sent to the player when they last died. |
| totalPlayersKilled | integer  | All         | The number of other players killed by this player. (this field was renamed from "playerKills" in v2.0) |
| playersKilled | MAPPED   | All         | The other players killed. This is a JSON object where each key is a player name and the corresponding value is a count. |
| playersKilledByWeapon | MAPPED   | All         | The weapons used to kill other players. This is a JSON object where each key is a weapon name and the corresponding value is a count. |
| lastPlayerKill | timestamp | All         | The date and time when the last player killed by this player was killed. |
| lastPlayerKilled | varchar  | All         | The name of the last player killed by this player. |
| totalMobsKilled | integer  | All         | The number of mobs killed by this player. (this field was renamed from "mobKills" in v2.0) |
| mobsKilled | MAPPED   | All         | The mobs killed. This is a JSON object where each key is a mob name and the corresponding value is a count. |
| mobsKilledByWeapon | MAPPED   | All         | The weapons used to kill mobs. This is a JSON object where each key is a weapon name and the corresponding value is a count. |
| lastMobKill | timestamp | All         | The date and time when the last mob killed by this player was killed. |
| lastMobKilled | varchar  | All         | The name of the last player killed by this player. |
| totalBlocksBroken | integer  | v2.0+       | The total number of blocks broken. |
| blocksBroken | MAPPED   | All         | The blocks broken. This is a JSON object where each key is a material name and the corresponding value is a count. |
| totalBlocksPlaced | integer  | v2.0+       | The total number of blocks placed. |
| blocksPlaced | MAPPED   | All         | The blocks placed. This is a JSON object where each key is a material name and the corresponding value is a count. |
| animalsTamed | MAPPED   | All         | Animals tamed by the player. This is a JSON object where each key is a mob  name and the corresponding value is a count. |
| totalDistanceTraveled | float    | v2.0+       | The total distance traveled. |
| travelDistances | MAPPED   | All         | The distances traveled by different means. This is a JSON object where each key is a travel method and the corresponding value is the number of meters travelled. |
| biomeDistances | MAPPED   | All         |  The distances traveled in each type of biome. This is a JSON object where each key is a biome name and the corresponding value is the number of meters travelled. |
| travelTimes | MAPPED   | All         | The amount of time traveled by different means. This is a JSON object where each key is a travel method and the corresponding value is the number of seconds travelled. |
| biomeTimes | MAPPED   | All         | The amount of time traveled in each type of biome. This is a JSON object where each key is a biome name and the corresponding value is the number of seconds travelled. |
| totalItemsDropped | integer  | v2.0+       | The total number of items dropped. |
| itemsDropped | MAPPED   | All         | This is a JSON object where each key is a material name and the corresponding value is a count. |
| totalItemsPickedUp | integer  | v2.0+       | The total number of items picked up. |
| itemsPickedUp | MAPPED   | All         | This is a JSON object where each key is a material name and the corresponding value is a count. |
| totalItemsCrafted  | integer  | v2.0+       | The total number of items crafted. |
| itemsCrafted | MAPPED   | All         | This is a JSON object where each key is a material name and the corresponding value is a count. |
| eggsThrown | MAPPED   | All         | This is a JSON object where each key is an egg type and the corresponding value is a count.|
| foodEaten | MAPPED   | All         | This is a JSON object where each key is an item name and the corresponding value is a count.|
| timesSlept | integer  | All         | Number of times the player has slept in a bed. |
| arrowsShot | integer  | All         | Number of arrows shot from a bow. |
| firesStarted | integer  | All         | Number of fires started with flint and steel. |
| fishCaught | integer  | All         | Number of fish caught. |
| chatMessages | integer  | All         | Number of chat messages sent. |
| portalsCrossed | integer  | All         | Number of nether portals crossed. |
| waterBucketsFilled | integer  | All         | Number of buckets filled with water. |
| waterBucketsEmptied | integer  | All         | Number of water buckets emptied. |
| lavaBucketsFilled | integer  | All         | Number of buckets filled with lava. |
| lavaBucketsEmptied | integer  | All         | Number of lava buckets emptied. |
| cowsMilked | integer  | All         | Number of cows milked. |
| mooshroomsMilked | integer  | All         | Number of mooshrooms milked. |
| mooshroomsSheared | integer  | v1.0+       | Number of mooshrooms sheared. |
| sheepSheared | integer  | All         | Number of sheep sheared. |
| sheepDyed | integer  | All         | Number of sheep dyed. |
| lifetimeExperience | integer  | All         | Amount of experience accumulated over the player's life. |
| itemsEnchanted | integer  | All         | Number of items enchanted. |
| itemEnchantmentLevels | integer  | All         | Number of levels spent enchanting items. |
| sessionTime | integer  | All         | The number of seconds the player has been playing for the last time they played. |
| totalTime | integer  | All         | The total number of seconds the player has played for. |
| lastUpdate | timestamp | All         | The date and time of the last update to the record. |
| online    | tinyint  | v2.0+       | A boolean indicating whether or not the player is currently online. |
| uuid      | varchar  | v2.25+      | String representation of the player UUID to support name changes |