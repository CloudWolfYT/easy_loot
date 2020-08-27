scoreboard players remove multi cw_loot 1

execute store result score dst cw_loot run data get block ~ ~2 ~ Items[0].tag.loot[0].id
execute if data block ~ ~2 ~ Items[0].tag.loot[0].all run tag @s add get_all
function cw_el:loot/get_loot
tag @s remove get_all
execute if data block ~ ~3 ~ Items[0] run data modify entity @e[tag=cw_loot,tag=chest,tag=new,limit=1] TileEntityData.Items insert 0 from block ~ ~3 ~ Items[0]
execute if data block ~ ~3 ~ Items[0] run function cw_el:insert/chest/random_slot

data modify block ~ ~2 ~ Items[0].tag.loot append from block ~ ~2 ~ Items[0].tag.loot[0]
data remove block ~ ~2 ~ Items[0].tag.loot[0]

#tellraw @a ["",{"text":"MULTI: ","color":"dark_purple"},{"score":{"name":"multi","objective":"cw_loot"},"color":"light_purple"}]

execute if score multi cw_loot matches 1.. run function cw_el:insert/block_multi