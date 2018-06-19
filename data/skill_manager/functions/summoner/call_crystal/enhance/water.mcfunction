##############################
### クリスタルWater支援
##############################

###---演出---Start
particle minecraft:dust 0 0 1 3 ~ ~2 ~5 1.75 1.75 0 0 100 force
particle minecraft:dust 0 0 1 3 ~ ~2 ~-5 1.75 1.75 0 0 100 force
particle minecraft:dust 0 0 1 3 ~5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0 0 1 3 ~-5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0 0 1 3 ~ ~2 ~10 3 3 0 0 100 force
particle minecraft:dust 0 0 1 3 ~ ~2 ~-10 3 3 0 0 100 force
particle minecraft:dust 0 0 1 3 ~10 ~2 ~ 0 3 3 0 100 force
particle minecraft:dust 0 0 1 3 ~-10 ~2 ~ 0 3 3 0 100 force
###---演出---End

function skill_manager:summoner/call_crystal/enhance/common

execute if score @s SkillAttribute matches 61091..61092 run effect give @e[distance=..10,team=Friendly] minecraft:dolphins_grace 60 126
execute if score @s SkillAttribute matches 61092 run effect give @e[distance=..10,team=Friendly] minecraft:conduit_power 60 49
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:dolphins_grace 180 126
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:conduit_power 180 49
