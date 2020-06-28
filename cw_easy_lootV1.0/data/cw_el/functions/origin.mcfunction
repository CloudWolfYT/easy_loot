kill @e[tag=cw_loot,tag=origin]
setblock ~ ~ ~ chest[facing=west]{CustomName:'{"text":"Example Pool"}',Items:[{Slot:0b,id:"minecraft:gold_ingot",Count:1b},{Slot:1b,id:"minecraft:gold_ingot",Count:1b},{Slot:2b,id:"minecraft:gold_ingot",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:barrier",Count:1b}]}
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["cw_loot","origin"],NoGravity:1b,Invulnerable:1b}
scoreboard players set dst cw_loot 0
setblock ~-1 ~ ~ minecraft:birch_wall_sign[facing=west]{Text1:"{\"text\":\"Loot Table:\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute at @e[tag=cw_loot,tag=origin,limit=1] run function cw_el:find_next\"},\"color\":\"dark_aqua\"}",Text2:"{\"score\":{\"name\":\"dst\",\"objective\":\"cw_loot\"},\"color\":\"light_purple\"}",Text3:"{\"text\":\"Click to\",\"color\":\"blue\"}",Text4:"{\"text\":\"Expand\",\"color\":\"blue\"}"}
setblock ~ ~2 ~ shulker_box
setblock ~ ~3 ~ shulker_box
setblock ~1 ~ ~ brown_carpet
setblock ~2 ~ ~ brown_carpet
setblock ~3 ~ ~ brown_carpet

setblock ~ ~ ~-1 command_block{Command:"/give @p chest{loot:[{id:0},{id:0},{id:0}]}"}
setblock ~ ~1 ~-1 stone_button[face=floor]
setblock ~-1 ~ ~-1 birch_wall_sign[facing=west]{Text1:"{\"text\":\"Example:\"}",Text2:"{\"text\":\"1/5 Nothing\",\"color\":\"red\"}",Text3:"{\"text\":\"1/5 Diamond\",\"color\":\"dark_aqua\"}",Text4:"{\"text\":\"3/5 Gold Ingot\",\"color\":\"gold\"}"}