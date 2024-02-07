#Function
execute if score @s HP matches ..0 unless data storage main: System.Islands.Chaos.003 if entity @s[predicate=area:system/skylands/chaos_islands/third] run summon armor_stand 250 318 -938 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,Green],Level:1}]]}}]}
execute if score @s HP matches ..0 if entity @s[predicate=area:system/skylands/chaos_islands/third] run data modify storage main: System.Islands.Chaos.003 set value 1b
