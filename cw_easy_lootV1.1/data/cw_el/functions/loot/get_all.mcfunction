replaceitem entity @e[tag=origin,tag=cw_loot,limit=1] armor.head diamond{Transfer:[{id:"minecraft:chest"}]}
data modify entity @e[tag=origin,tag=cw_loot,limit=1] ArmorItems[3].tag.Transfer set from block ~ ~ ~ Items

execute as @e[tag=origin,tag=cw_loot] at @s run data remove block ~ ~3 ~ Items
execute as @e[tag=origin,tag=cw_loot] at @s run data modify block ~ ~3 ~ Items set from entity @s ArmorItems[3].tag.Transfer

execute at @e[tag=origin,tag=cw_loot] run function cw_el:loot/message