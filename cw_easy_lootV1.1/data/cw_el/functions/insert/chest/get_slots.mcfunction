scoreboard players set diff cw_loot 27
scoreboard players operation diff cw_loot -= multi cw_loot

summon item ~ ~ ~ {PickupDelay:10000,Tags:["cw_slots"],Item:{id:"minecraft:stick",Count:1b,tag:{SLOTS:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]}}}

execute as @e[tag=cw_slots] run function cw_el:insert/chest/slot_rng