replaceitem block ~ ~2 ~ container.0 chest
data modify block ~ ~2 ~ Items[0].tag set from entity @s Inventory[{id:"minecraft:chest"}].tag
execute store result score multi cw_loot run data get block ~ ~2 ~ Items[0].tag.loot
clear @s chest 1
tellraw @a {"text":"====== Chest Opened ======","color":"green"}
function cw_el:insert/item_multi