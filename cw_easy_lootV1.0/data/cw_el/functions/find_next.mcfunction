execute if entity @e[tag=cw_loot,tag=origin,dx=0] run scoreboard players set dst cw_loot 0
scoreboard players add dst cw_loot 1
execute positioned ~ ~ ~1 if block ~ ~ ~ chest run function cw_el:find_next
execute positioned ~ ~ ~1 if block ~ ~ ~ air run function cw_el:place_next