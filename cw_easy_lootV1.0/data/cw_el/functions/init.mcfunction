scoreboard objectives add cw_loot dummy
scoreboard objectives add cw_chest_drop minecraft.dropped:minecraft.chest
scoreboard players set #27 cw_loot 27

schedule function cw_menu:message 1t
schedule function cw_el:message 2t