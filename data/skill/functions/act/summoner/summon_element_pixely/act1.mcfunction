#> skill:act/summoner/summon_element_pixely/act1
#
# エレメントピクセリー召喚
#
# @within function skill:act/summoner/summon_element_pixely/act0

# 火・氷・雷のピクセリーがランダムで召喚される
    execute store result score _ Calc run function calc:random
    scoreboard players set _ _ 3
    scoreboard players operation _ Calc %= _ _

# 召喚
    execute if score _ Calc matches 0 run summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FlarePixely,Main],Level:30}],[{Tags:[Global,Friendly,Shoot,FlarePixely,BodyDisplay],Level:30}],[{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay1],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay2],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,HeadDisplay],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,RingDisplay],Level:30}]]}}]}
    execute if score _ Calc matches 1 run summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FrozenPixely,Main],Level:30}],[{Tags:[Global,Friendly,Shoot,FrozenPixely,BodyDisplay],Level:30}],[{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay1],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay2],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,HeadDisplay],Level:30},{Tags:[Global,Friendly,Shoot,FrozenPixely,RingDisplay],Level:30}]]}}]}
    execute if score _ Calc matches 2 run summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,SparkPixely,Main],Level:30}],[{Tags:[Global,Friendly,Shoot,SparkPixely,BodyDisplay],Level:30}],[{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay1],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,BaseDisplay2],Level:30},{Tags:[Global,Friendly,Shoot,FlarePixely,HeadDisplay],Level:30},{Tags:[Global,Friendly,Shoot,SparkPixely,RingDisplay],Level:30}]]}}]}

# レベルを合わせる
    scoreboard players operation _ Level = @s Level
    execute positioned ~ ~1 ~ as @e[tag=Spawn,tag=!CallSpawned,distance=..0.01] run scoreboard players operation @s Level = _ Level

    function makeup:skill/act/summoner/summon_element_pixely/act1