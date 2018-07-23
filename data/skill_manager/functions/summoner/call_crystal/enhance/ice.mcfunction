##############################
### クリスタルIce支援
##############################

###---演出---Start
particle minecraft:dust 0.527 0.804 0.917 3 ~ ~2 ~5 1.75 1.75 0 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~ ~2 ~-5 1.75 1.75 0 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~-5 ~2 ~ 0 1.75 1.75 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~ ~2 ~10 3 3 0 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~ ~2 ~-10 3 3 0 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~10 ~2 ~ 0 3 3 0 100 force
particle minecraft:dust 0.527 0.804 0.917 3 ~-10 ~2 ~ 0 3 3 0 100 force
###---演出---End

function skill_manager:summoner/call_crystal/enhance/common

execute if score @s SkillAttribute matches 61091..61092 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 60 127
execute if score @s SkillAttribute matches 61092 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 60 127
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 180 127
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 180 127
