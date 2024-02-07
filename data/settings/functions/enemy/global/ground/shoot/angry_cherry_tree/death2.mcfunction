#Function
execute if score @s HP matches ..0 run data modify storage main: System.Islands.Chaos.005 set value 1b
execute if score @s HP matches ..0 run summon armor_stand 202 318 -938 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,Blue],Level:1}]]}}]}
