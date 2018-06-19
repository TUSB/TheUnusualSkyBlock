##############################
### クリスタルDark支援
##############################

###---演出---Start
particle minecraft:dust 0 0 0 3 ~ ~2 ~5 1.75 1.75 0 0 100 force
particle minecraft:dust 0 0 0 3 ~ ~2 ~-5 1.75 1.75 0 0 100 force
particle minecraft:dust 0 0 0 3 ~5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0 0 0 3 ~-5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0 0 0 3 ~ ~2 ~10 3 3 0 0 100 force
particle minecraft:dust 0 0 0 3 ~ ~2 ~-10 3 3 0 0 100 force
particle minecraft:dust 0 0 0 3 ~10 ~2 ~ 0 3 3 0 100 force
particle minecraft:dust 0 0 0 3 ~-10 ~2 ~ 0 3 3 0 100 force
###---演出---End

function skill_manager:summoner/call_crystal/enhance/common

execute if score @s SkillAttribute matches 61091..61092 run scoreboard players operation @a[distance=..10] ManaRefresh > $1200 Const
execute if score @s SkillAttribute matches 61092..61093 run effect give @a[distance=..10] minecraft:saturation 5 0
execute if score @s SkillAttribute matches 61093 run scoreboard players operation @a[distance=..10] ManaRefresh > $3600 Const
