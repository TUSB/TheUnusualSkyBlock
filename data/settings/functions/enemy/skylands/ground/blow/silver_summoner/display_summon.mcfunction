#Function
#ループ処理の準備
    scoreboard players set # _ 0
# シルバー召喚
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Ground,Blow,SilverSummoner,Aec],Level:36}]]
    scoreboard players operation _ Level = @s Level
    execute if block ~ ~ ~ #block:no_collision as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
    execute unless block ~ ~ ~ #block:no_collision as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function settings:enemy/skylands/ground/blow/silver_summoner/display_summon_loop
