execute store result score contents cw_loot run data get entity @s Item.tag.SLOTS
scoreboard players remove item cw_loot 1
function cw_el:loot/rng

execute if score item cw_loot matches 0 run data remove entity @s Item.tag.SLOTS[0]
execute if score item cw_loot matches 1 run data remove entity @s Item.tag.SLOTS[1]
execute if score item cw_loot matches 2 run data remove entity @s Item.tag.SLOTS[2]
execute if score item cw_loot matches 3 run data remove entity @s Item.tag.SLOTS[3]
execute if score item cw_loot matches 4 run data remove entity @s Item.tag.SLOTS[4]
execute if score item cw_loot matches 5 run data remove entity @s Item.tag.SLOTS[5]
execute if score item cw_loot matches 6 run data remove entity @s Item.tag.SLOTS[6]
execute if score item cw_loot matches 7 run data remove entity @s Item.tag.SLOTS[7]
execute if score item cw_loot matches 8 run data remove entity @s Item.tag.SLOTS[8]
execute if score item cw_loot matches 9 run data remove entity @s Item.tag.SLOTS[9]
execute if score item cw_loot matches 10 run data remove entity @s Item.tag.SLOTS[10]
execute if score item cw_loot matches 11 run data remove entity @s Item.tag.SLOTS[11]
execute if score item cw_loot matches 12 run data remove entity @s Item.tag.SLOTS[12]
execute if score item cw_loot matches 13 run data remove entity @s Item.tag.SLOTS[13]
execute if score item cw_loot matches 14 run data remove entity @s Item.tag.SLOTS[14]
execute if score item cw_loot matches 15 run data remove entity @s Item.tag.SLOTS[15]
execute if score item cw_loot matches 16 run data remove entity @s Item.tag.SLOTS[16]
execute if score item cw_loot matches 17 run data remove entity @s Item.tag.SLOTS[17]
execute if score item cw_loot matches 18 run data remove entity @s Item.tag.SLOTS[18]
execute if score item cw_loot matches 19 run data remove entity @s Item.tag.SLOTS[19]
execute if score item cw_loot matches 20 run data remove entity @s Item.tag.SLOTS[20]
execute if score item cw_loot matches 21 run data remove entity @s Item.tag.SLOTS[21]
execute if score item cw_loot matches 22 run data remove entity @s Item.tag.SLOTS[22]
execute if score item cw_loot matches 23 run data remove entity @s Item.tag.SLOTS[23]
execute if score item cw_loot matches 24 run data remove entity @s Item.tag.SLOTS[24]
execute if score item cw_loot matches 25 run data remove entity @s Item.tag.SLOTS[25]
execute if score item cw_loot matches 26 run data remove entity @s Item.tag.SLOTS[26]

scoreboard players remove diff cw_loot 1
execute if score diff cw_loot matches 1.. run function cw_el:insert/chest/slot_rng