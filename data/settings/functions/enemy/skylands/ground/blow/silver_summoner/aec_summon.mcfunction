#Function
# ランダムでシルバー属召喚を行う
# 強いシルバー属ほどでにくい
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    execute store result score _ Random run function calc:random
    scoreboard players operation _ Level = @s Level
    scoreboard players set _ _ 80
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0..14 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverWarrior,Main],Level:12}]]
    execute if score _ Random matches 15..29 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverTank,Main],Level:12}]]
    execute if score _ Random matches 30..44 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverHealer,Main],Level:12}]]
    execute if score _ Random matches 45..59 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverSorcerer,Main],Level:12}]]
    execute if score _ Random matches 60..69 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverBomber,Main],Level:36}],[{Tags:[Skylands,Ground,Blow,SilverBomber,Marker],Level:36}]]
    execute if score _ Random matches 70..79 run data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverGeneral,Main],Level:36}]]
    execute store result storage mob_data: ParentID int 1 run scoreboard players get @s OhMyDatID
    data modify storage mob_data: Call.SpawnEntities[][].ParentID set from storage mob_data: ParentID
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
