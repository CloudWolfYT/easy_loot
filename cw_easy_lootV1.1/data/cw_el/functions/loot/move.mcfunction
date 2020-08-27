scoreboard players remove dst cw_loot 1

execute unless score dst cw_loot matches 1.. if entity @s[tag=get_all] run function cw_el:loot/get_all
execute unless score dst cw_loot matches 1.. unless entity @s[tag=get_all] run function cw_el:loot/get_random
execute if score dst cw_loot matches 1.. positioned ~ ~ ~1 run function cw_el:loot/move