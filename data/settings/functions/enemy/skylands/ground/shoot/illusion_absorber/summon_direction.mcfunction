#Function
playsound entity.evoker.cast_spell hostile @a[distance=..32] ~ ~ ~ 1 0.75
particle crit ~ ~1 ~ 0 0 0 0.75 50 force @a[distance=..32]
summon armor_stand ~ ~2 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Sky,Blow,AbsorberVex,Main],Level:25}]],}}]}
