#Function
# ランダムでソウル召喚を行う
# 強いアイほど出にくい
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    execute store result score _ Random run function calc:random
    scoreboard players operation _ Level = @s Level
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0..29 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,DemonSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,DemonSoulMarker],Level:90}]]
    execute if score _ Random matches 30..44 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,PoisonSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,PoisonSoulMarker],Level:90}]]
    execute if score _ Random matches 45..59 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,CrimsonSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,CrimsonSoulMarker],Level:90}]]
    execute if score _ Random matches 60..69 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,LunaticSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,LunaticSoulMarker],Level:90}]]
    execute if score _ Random matches 70..79 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,ElectroSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,ElectroSoulMarker],Level:90}]]
    execute if score _ Random matches 80..89 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,SherbetSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,SherbetSoulMarker],Level:90}]]
    execute if score _ Random matches 90..99 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Sky,Shoot,ILoveEye,AuroraSoul],Level:90}],[{Tags:[Skylands,Sky,Shoot,ILoveEye,AuroraSoulMarker],Level:90}]]
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
