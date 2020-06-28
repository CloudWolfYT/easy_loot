execute store result score contents cw_loot run data get block ~ ~ ~ Items
execute if block ~1 ~ ~ chest store result score item cw_loot run data get block ~1 ~ ~ Items
execute if block ~1 ~ ~ chest run scoreboard players operation contents cw_loot += item cw_loot
execute if block ~2 ~ ~ chest store result score item cw_loot run data get block ~2 ~ ~ Items
execute if block ~2 ~ ~ chest run scoreboard players operation contents cw_loot += item cw_loot
execute if block ~3 ~ ~ chest store result score item cw_loot run data get block ~3 ~ ~ Items
execute if block ~3 ~ ~ chest run scoreboard players operation contents cw_loot += item cw_loot

function cw_el:loot/rng

execute if score item cw_loot matches 0..26 run function cw_el:loot/chest
execute if score item cw_loot matches 27..53 positioned ~1 ~ ~ run function cw_el:loot/chest
execute if score item cw_loot matches 54..80 positioned ~2 ~ ~ run function cw_el:loot/chest
execute if score item cw_loot matches 81..107 positioned ~3 ~ ~ run function cw_el:loot/chest

execute as @e[tag=origin,tag=cw_loot] run data remove entity @s[nbt={ArmorItems:[{id:"minecraft:barrier"}]}] ArmorItems[0]
execute as @e[tag=origin,tag=cw_loot] at @s run data remove block ~ ~3 ~ Items
execute as @e[tag=origin,tag=cw_loot] at @s run data modify block ~ ~3 ~ Items insert 0 from entity @s ArmorItems[0]

execute at @e[tag=origin,tag=cw_loot] run function cw_el:loot/message