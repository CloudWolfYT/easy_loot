execute as @a[gamemode=!creative,gamemode=!spectator] if data entity @s Inventory[{id:"minecraft:chest"}].tag.loot at @e[tag=cw_loot,tag=origin] run function cw_el:insert/item_chest
execute as @a[scores={cw_chest_drop=1..}] at @s run function cw_el:chest_spin
execute as @e[type=item,nbt={OnGround:1b}] if data entity @s Item.tag.loot at @s run function cw_el:insert/block_chest