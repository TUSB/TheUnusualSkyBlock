##############################
### ボミオストラップ発動
##############################

execute if score @s SupportSkill matches 32041 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[DeceleratleTrap,Level1,TickingTask]}
execute if score @s SupportSkill matches 32042 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[DeceleratleTrap,Level2,TickingTask]}
execute if score @s SupportSkill matches 32043 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[DeceleratleTrap,Level3,TickingTask]}

###---演出---Start
###---演出---End
