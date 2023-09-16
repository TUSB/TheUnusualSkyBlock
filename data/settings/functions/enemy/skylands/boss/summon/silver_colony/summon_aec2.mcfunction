#Function
# ランダムでシルバー上位種召喚を行う
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    scoreboard players operation _ Level = @s Level
    scoreboard players set _ _ 2
    scoreboard players operation _ Level /= _ _
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 4
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverBomber,Main,SpawnParticles],Level:36}],[{Tags:[Skylands,Ground,Blow,SilverBomber,Marker],Level:36}]]
    execute if score _ Random matches 1..2 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverSummoner,Main,SpawnParticles],Level:36}],[{Tags:[Skylands,Ground,Blow,SilverSummoner,Display],Level:36}]]
    execute if score _ Random matches 3 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverGeneral,Main,SpawnParticles],Level:36}]]
    execute store result storage mob_data: ParentID int 1 run scoreboard players get @s OhMyDatID
    data modify storage mob_data: Call.SpawnEntities[][].ParentID set from storage mob_data: ParentID
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
