#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:take}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:take}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 1
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 2
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 4
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 8
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 16
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 32
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 64
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] cw_loot 128

#Transfer random number and limit to given range
scoreboard players operation item cw_loot = @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,limit=1] cw_loot
scoreboard players operation item cw_loot %= contents cw_loot

kill @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1]