#Function
summon armor_stand ~ ~100 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,Zedra,Body],Level:60}]]}}]}
execute as @e[distance=..0.5,tag=ZedraAI] run tag @s add GoSign
