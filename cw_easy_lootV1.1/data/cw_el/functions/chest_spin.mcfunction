scoreboard players set @s cw_chest_drop 0
execute store result score rotator cw_loot run data get entity @s Rotation[0]
scoreboard players add rotator cw_loot 180
execute if score rotator cw_loot matches 180.. run scoreboard players remove rotator cw_loot 360
execute store result entity @e[type=item,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get rotator cw_loot