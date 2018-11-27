##############################
### クリスタルWind支援
##############################

###---演出---Start
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~ ~2 ~5 1.75 1.75 0 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~ ~2 ~-5 1.75 1.75 0 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~5 ~2 ~ 0 1.75 1.75 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~-5 ~2 ~ 0 1.75 1.75 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~ ~2 ~10 3 3 0 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~ ~2 ~-10 3 3 0 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~10 ~2 ~ 0 3 3 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0.6015625 0.80078125 0.1953125 3 ~-10 ~2 ~ 0 3 3 0 100 force @a[tag=ShowParticles]
###---演出---End

function skill_manager:summoner/call_crystal/enhance/common

execute if score @s SkillAttribute matches 61091..61092 run effect give @e[distance=..10,team=Friendly] minecraft:slow_falling 60 127
execute if score @s SkillAttribute matches 61092 run effect give @e[distance=..10,team=Friendly] minecraft:jump_boost 60 9
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:slow_falling 180 127
execute if score @s SkillAttribute matches 61093 run effect give @e[distance=..10,team=Friendly] minecraft:jump_boost 180 19
