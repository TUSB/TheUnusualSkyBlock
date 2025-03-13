#Function
# 音
    playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 2 0.5 0
# ランダムで廃病院ゾンビ召喚を行う
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    execute store result score _ Random run function calc:random
    scoreboard players operation _ Level = @s Level
    scoreboard players set _ _ 3
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,Giga,Main],Level:66}]]
    execute if score _ Random matches 1 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,Mega,Main],Level:66}]]
    execute if score _ Random matches 2 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,Legion,Main],Level:66}]]
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
