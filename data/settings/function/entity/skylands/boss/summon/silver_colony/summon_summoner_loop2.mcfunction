#Function
# 召喚を行う
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
    scoreboard players operation _ Level = @s Level
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Skylands,Boss,Summon,SilverColony,SummonAec],Level:96}]]
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
