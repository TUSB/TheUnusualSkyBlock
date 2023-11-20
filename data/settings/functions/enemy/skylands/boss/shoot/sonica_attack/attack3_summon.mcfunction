#Function
# Markerをランダムな方向に向かせる
    execute at @a[predicate=entity:player,distance=..16,sort=random,limit=1] positioned ~ ~1.5 ~ run function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
# 召喚
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^ ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^6 ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^-6 ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^ ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^12 ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 positioned ^-12 ^ ^12 run summon armor_stand ^ ^ ^ {Tags:[Spawn,SonicBoom],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoom],Level:150}]]}}]}
    execute at 0-0-0-0-0 rotated ~ 0 facing ^ ^ ^-1 as @e[distance=..32,tag=Spawn,tag=SonicBoom] positioned as @s run tp @s ^ ^ ^ ~ ~
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
