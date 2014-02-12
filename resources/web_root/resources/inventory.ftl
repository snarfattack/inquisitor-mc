<#include "spriteData.ftl">
<#import "sprites.ftl" as sprite>

<#macro "slot" item>
    <#local sid="${item.type?c}-${item.data?c}">
    <#if sprites[sid]?has_content>
        <#local info=sprites[sid]>
    <#else>
        <#local pid="${item.type?c}-${item.durability?c}">
        <#if potions[pid]?has_content>
            <#local info=potions[pid]>
            <#local title="${info[1]}&#10;${info[2]}">
            <#local sid="potion-${info[0]}">
            <#if sprites[sid]?has_content>
                <#local info=sprites[sid]>
            <#else>
                <#local info="">
            </#if>
        <#else>
            <#local sid="${item.type?c}-0">
            <#if sprites[sid]?has_content>
                <#local info=sprites[sid]>
            <#else>
                <#local info="">
            </#if>
        </#if>
    </#if>
    <#if info?has_content>
        <#if info[2]?has_content && (! title?has_content)>
            <#local title=info[2]>
        </#if>
        <#if item.enchantments?has_content>
            <#list item.enchantments?keys?sort as type>
                <#local value=item.enchantments[type]>
                <#if enchantments[type]??>
                    <#local name=enchantments[type]>
                    <#local level="">
                    <#if (value == 1)><#local level="I"></#if>
                    <#if (value == 2)><#local level="II"></#if>
                    <#if (value == 3)><#local level="III"></#if>
                    <#if (value == 4)><#local level="IV"></#if>
                    <#if (value == 5)><#local level="V"></#if>
                    <#local title="${title}&#10;${name} ${level}">
                </#if>
            </#list>
        </#if>
        <div class="slot <#if item.enchantments?has_content>enchanted</#if>" title="${title}">
            <@sprite.sprite id=sid/>
            <#if (item.amount > 1)><div class="amount">${item.amount}</div></#if>
            <#if (item.durability > 0) && durabilities[sid]?has_content>
                <#local damage=(100 * (1 - (item.durability / durabilities[sid])))>
                <div class="damage">
                    <div class="bar <#if (damage > 10)>normal<#else>critical</#if>" style="width:${damage}%">&nbsp;</div>
                </div>
            </#if>
        </div>
    <#else>
        <@emptySlot/>
    </#if>
</#macro>

<#macro "emptySlot">
    <div class="slot empty" title="Empty">&nbsp;</div>
</#macro>

<#assign durabilities = {
    "256-0": 251,
    "257-0": 251,
    "258-0": 251,
    "259-0": 65,
    "261-0": 385,
    "267-0": 251,
    "268-0": 60,
    "269-0": 60,
    "270-0": 60,
    "271-0": 60,
    "272-0": 132,
    "273-0": 132,
    "274-0": 132,
    "275-0": 132,
    "276-0": 1562,
    "277-0": 1562,
    "278-0": 1562,
    "279-0": 1562,
    "283-0": 33,
    "284-0": 33,
    "285-0": 33,
    "286-0": 33,
    "290-0": 60,
    "291-0": 132,
    "292-0": 251,
    "293-0": 1562,
    "294-0": 33,
    "298-0": 56,
    "299-0": 82,
    "300-0": 76,
    "301-0": 66,
    "302-0": 78,
    "303-0": 114,
    "304-0": 106,
    "305-0": 92,
    "306-0": 166,
    "307-0": 242,
    "308-0": 226,
    "309-0": 196,
    "310-0": 364,
    "311-0": 529,
    "312-0": 496,
    "313-0": 430,
    "314-0": 78,
    "315-0": 114,
    "316-0": 106,
    "317-0": 92,
    "346-0": 65,
    "359-0": 239,
    "398-0": 25
}>

<#assign enchantments = {
    "PROTECTION_ENVIRONMENTAL": "Protection",
    "PROTECTION_FIRE": "Fire Protection",
    "PROTECTION_FALL": "Feather Falling",
    "PROTECTION_EXPLOSIONS": "Blast Protection",
    "PROTECTION_PROJECTILE": "Projectile Protection",
    "OXYGEN": "Respiration",
    "WATER_WORKER": "Aqua Affinity",
    "DAMAGE_ALL": "Sharpness",
    "DAMAGE_UNDEAD": "Smite",
    "DAMAGE_ARTHROPODS": "Bane of Arthropods",
    "KNOCKBACK": "Knockback",
    "FIRE_ASPECT": "Fire Aspect",
    "LOOT_BONUS_MOBS": "Looting",
    "DIG_SPEED": "Efficiency",
    "SILK_TOUCH": "Silk Touch",
    "DURABILITY": "Unbreaking",
    "LOOT_BONUS_BLOCKS": "Fortune",
    "ARROW_DAMAGE": "Power",
    "ARROW_KNOCKBACK": "Punch",
    "ARROW_FIRE": "Flame",
    "ARROW_INFINITE": "Infinity"
}>

<#assign potions = {
    "373-16": ["0", "Awkward Potion", "No Effects"],
    "373-32": ["0", "Thick Potion", "No Effects"],
    "373-64": ["0", "Mundane Potion", "No Effects"],
    "373-8192": ["0", "Mundane Potion", "No Effects"],

    "373-8193": ["1", "Potion of Regeneration", "Regeneration (0:45)"],
    "373-8225": ["1", "Potion of Regeneration", "Regeneration II (0:22)"],
    "373-8257": ["1", "Potion of Regeneration", "Regeneration (2:00)"],
    "373-16385": ["1s", "Splash Potion of Regeneration", "Regeneration (0:33)"],
    "373-16417": ["1s", "Splash Potion of Regeneration", "Regeneration II (0:16)"],
    "373-16449": ["1s", "Splash Potion of Regeneration", "Regeneration (1:30)"],

    "373-8194": ["2", "Potion of Swiftness", "Speed (3:00)"],
    "373-8226": ["2", "Potion of Swiftness", "Speed II (1:30)"],
    "373-8258": ["2", "Potion of Swiftness", "Speed (8:00)"],
    "373-16386": ["2s", "Splash Potion of Swiftness", "Speed (2:15)"],
    "373-16418": ["2s", "Splash Potion of Swiftness", "Speed II (1:07)"],
    "373-16450": ["2s", "Splash Potion of Swiftness", "Speed (6:00)"],

    "373-8195": ["3", "Potion of Fire Resistance", "Fire Resistance (3:00)"],
    "373-8227": ["3", "Potion of Fire Resistance", "Fire Resistance (3:00)"],
    "373-8259": ["3", "Potion of Fire Resistance", "Fire Resistance (8:00)"],
    "373-16387": ["3s", "Splash Potion of Fire Resistance", "Fire Resistance (2:15)"],
    "373-16419": ["3s", "Splash Potion of Fire Resistance", "Fire Resistance (2:15)"],
    "373-16451": ["3s", "Splash Potion of Fire Resistance", "Fire Resistance (6:00)"],

    "373-8196": ["4", "Potion of Poison", "Poison (0:45)"],
    "373-8228": ["4", "Potion of Poison", "Poison II (0:22)"],
    "373-8260": ["4", "Potion of Poison", "Poison (2:00)"],
    "373-16388": ["4s", "Splash Potion of Poison", "Poison (0:33)"],
    "373-16420": ["4s", "Splash Potion of Poison", "Poison II (0:16)"],
    "373-16452": ["4s", "Splash Potion of Poison", "Poison (1:30)"],

    "373-8197": ["5", "Potion of Healing", "Instant Health"],
    "373-8229": ["5", "Potion of Healing", "Instant Health II"],
    "373-8261": ["5", "Potion of Healing", "Instant Health"],
    "373-16389": ["5s", "Splash Potion of Healing", "Instant Health"],
    "373-16421": ["5s", "Splash Potion of Healing", "Instant Health II"],
    "373-16453": ["5s", "Splash Potion of Healing", "Instant Health"],

    "373-8200": ["6", "Potion of Weakness", "Weakness (1:30)"],
    "373-8232": ["6", "Potion of Weakness", "Weakness (1:30)"],
    "373-8264": ["6", "Potion of Weakness", "Weakness (4:00)"],
    "373-16392": ["6s", "Splash Potion of Weakness", "Weakness (1:07)"],
    "373-16424": ["6s", "Splash Potion of Weakness", "Weakness (1:07)"],
    "373-16456": ["6s", "Splash Potion of Weakness", "Weakness (3:00)"],

    "373-8201": ["7", "Potion of Strength", "Strength (3:00)"],
    "373-8233": ["7", "Potion of Strength", "Strength II (1:30)"],
    "373-8265": ["7", "Potion of Strength", "Strength (8:00)"],
    "373-16393": ["7s", "Splash Potion of Strength", "Strength (2:15)"],
    "373-16425": ["7s", "Splash Potion of Strength", "Strength II (1:07)"],
    "373-16457": ["7s", "Splash Potion of Strength", "Strength (6:00)"],

    "373-8202": ["8", "Potion of Slowness", "Slowness (1:30)"],
    "373-8234": ["8", "Potion of Slowness", "Slowness (1:30)"],
    "373-8266": ["8", "Potion of Slowness", "Slowness (4:00)"],
    "373-16394": ["8s", "Splash Potion of Slowness", "Slowness (1:07)"],
    "373-16426": ["8s", "Splash Potion of Slowness", "Slowness (1:07)"],
    "373-16458": ["8s", "Splash Potion of Slowness", "Slowness (3:00)"],

    "373-8204": ["9", "Potion of Harming", "Instant Damage"],
    "373-8236": ["9", "Potion of Harming", "Instant Damage II"],
    "373-8268": ["9", "Potion of Harming", "Instant Damage"],
    "373-16396": ["9s", "Splash Potion of Harming", "Instant Damage"],
    "373-16428": ["9s", "Splash Potion of Harming", "Instant Damage II"],
    "373-16460": ["9s", "Splash Potion of Harming", "Instant Damage"]

}>
