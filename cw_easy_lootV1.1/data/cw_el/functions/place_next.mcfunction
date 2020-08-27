setblock ~ ~ ~ chest[facing=west]
setblock ~1 ~ ~ brown_carpet
setblock ~2 ~ ~ brown_carpet
setblock ~3 ~ ~ brown_carpet
setblock ~-1 ~ ~ minecraft:birch_wall_sign[facing=west]{Text1:"{\"text\":\"Loot Table:\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute at @e[tag=cw_loot,tag=origin,limit=1] run function cw_el:find_next\"},\"color\":\"dark_aqua\"}",Text2:"{\"score\":{\"name\":\"dst\",\"objective\":\"cw_loot\"},\"color\":\"light_purple\"}",Text3:"{\"text\":\"Click to\",\"color\":\"blue\"}",Text4:"{\"text\":\"Expand\",\"color\":\"blue\"}"}