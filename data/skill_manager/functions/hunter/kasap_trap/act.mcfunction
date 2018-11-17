##############################
### ルカナントラップ発動
##############################

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:angry_villager",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[KasapTrap,NativeTask,Initializing]}

execute if score @s SupportSkill matches 32021 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 140
execute if score @s SupportSkill matches 32022 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 150
execute if score @s SupportSkill matches 32023 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 160
execute if score @s SupportSkill matches 32024 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 170

tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:block.piston.extend master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.lever.click master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.conduit.deactivate master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.3 30 force
###---演出---End
