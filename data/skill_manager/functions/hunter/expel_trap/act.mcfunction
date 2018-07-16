##############################
### ニフラムトラップ発動
##############################

execute if score @s SupportSkill matches 32081 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[ExpelTrap,Level1,TickingTask]}
execute if score @s SupportSkill matches 32082 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[ExpelTrap,Level2,TickingTask]}

###---演出---Start
###---演出---End
