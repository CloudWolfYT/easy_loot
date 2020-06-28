execute if entity @s[y_rotation=-45..45] run summon minecraft:falling_block ~ ~ ~ {Tags:["cw_loot","chest"],BlockState:{Name:"minecraft:chest",Properties:{facing:south}},TileEntityData:{Items:[]},Time:1}
execute if entity @s[y_rotation=45..135] run summon minecraft:falling_block ~ ~ ~ {Tags:["cw_loot","chest"],BlockState:{Name:"minecraft:chest",Properties:{facing:west}},TileEntityData:{Items:[]},Time:1}
execute if entity @s[y_rotation=135..-135] run summon minecraft:falling_block ~ ~ ~ {Tags:["cw_loot","chest"],BlockState:{Name:"minecraft:chest",Properties:{facing:north}},TileEntityData:{Items:[]},Time:1}
execute if entity @s[y_rotation=-135..-45] run summon minecraft:falling_block ~ ~ ~ {Tags:["cw_loot","chest"],BlockState:{Name:"minecraft:chest",Properties:{facing:east}},TileEntityData:{Items:[]},Time:1}


execute at @e[tag=cw_loot,tag=origin] run replaceitem block ~ ~2 ~ container.0 chest
execute at @e[tag=cw_loot,tag=origin] run data modify block ~ ~2 ~ Items[0] set from entity @s Item
execute at @e[tag=cw_loot,tag=origin] store result score multi cw_loot run data get block ~ ~2 ~ Items[0].tag.loot
function cw_el:insert/chest/get_slots
execute at @e[tag=cw_loot,tag=origin] store result score multi cw_loot run data get block ~ ~2 ~ Items[0].tag.loot
execute at @e[tag=cw_loot,tag=origin] run function cw_el:insert/block_multi
kill @s
kill @e[tag=cw_slots]