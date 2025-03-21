#Function
playsound entity.evoker.cast_spell hostile @a[distance=..32] ~ ~ ~ 1 0.75
particle crit ~ ~1 ~ 0 0 0 0.75 50 force @a[distance=..32]
#レベルを設定
execute store result score _ Level run scoreboard players get @s Level
scoreboard players set _ _ 2
#召喚
summon armor_stand ~ ~2 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Sky,Blow,AbsorberVex,Main]}]]}}]}
execute positioned ~ ~2 ~ store result entity @e[tag=Spawn,distance=..0.01,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Level int 1 run scoreboard players operation _ Level /= _ _
summon armor_stand ~ ~1.9 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Sky,Blow,AbsorberVex,Main]}]]}}]}
execute positioned ~ ~1.9 ~ store result entity @e[tag=Spawn,distance=..0.01,limit=1] ArmorItems[3].tag.SpawnEntities[0][0].Level int 1 run scoreboard players get _ Level
