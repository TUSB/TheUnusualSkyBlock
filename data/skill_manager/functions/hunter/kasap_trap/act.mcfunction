##############################
### ルカナントラップ発動
##############################

execute at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:witch",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[KasapTrap,TickingTask,Initializing]}

execute if score @s SupportSkill matches 32021 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 110
execute if score @s SupportSkill matches 32022 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 120
execute if score @s SupportSkill matches 32023 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 140
execute if score @s SupportSkill matches 32024 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 170

tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
###---演出---End
