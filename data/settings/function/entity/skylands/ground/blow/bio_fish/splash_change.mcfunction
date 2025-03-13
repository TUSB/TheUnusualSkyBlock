#Function
execute store result score _ Random run function calc:random
scoreboard players set _ _ 4
scoreboard players operation _ Random %= _ _
execute at @s run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
execute if score _ Random matches 0 at @s run data modify entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Tags set value [Skylands,Ground,Blow,BioFish,Salmon]
execute if score _ Random matches 1 at @s run data modify entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Tags set value [Skylands,Ground,Blow,BioFish,Pufferfish]
execute if score _ Random matches 2 at @s run data modify entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Tags set value [Skylands,Ground,Blow,BioFish,Cod]
execute if score _ Random matches 3 at @s run data modify entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Tags set value [Skylands,Ground,Blow,BioFish,TropicalFish]
execute at @s store result entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Level int 1 run scoreboard players get @s Level
