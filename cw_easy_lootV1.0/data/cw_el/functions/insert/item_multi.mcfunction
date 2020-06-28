scoreboard players remove multi cw_loot 1

execute store result score dst cw_loot run data get block ~ ~2 ~ Items[0].tag.loot[0].id
execute if data block ~ ~2 ~ Items[0].tag.loot[0].all run tag @s add get_all
function cw_el:loot/get_loot
tag @s remove get_all
loot give @s mine ~ ~3 ~ diamond_pickaxe{drop_contents:true}

data modify block ~ ~2 ~ Items[0].tag.loot append from block ~ ~2 ~ Items[0].tag.loot[0]
data remove block ~ ~2 ~ Items[0].tag.loot[0]

execute if score multi cw_loot matches 1.. run function cw_el:insert/item_multi