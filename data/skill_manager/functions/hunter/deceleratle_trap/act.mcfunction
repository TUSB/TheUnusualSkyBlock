##############################
### ボミオストラップ発動
##############################

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:angry_villager",Age:0,WaitTime:0,ReapplicationDelay:2147483647,Duration:300,Tags:[DeceleratleTrap,NativeTask]}

execute if score @s SupportSkill matches 32041 run scoreboard players set @e[distance=..6,tag=DeceleratleTrap,nbt={Duration:300},limit=1] SkillAttribute 80
execute if score @s SupportSkill matches 32042 run scoreboard players set @e[distance=..6,tag=DeceleratleTrap,nbt={Duration:300},limit=1] SkillAttribute 60
execute if score @s SupportSkill matches 32043 run scoreboard players set @e[distance=..6,tag=DeceleratleTrap,nbt={Duration:300},limit=1] SkillAttribute 40

###---演出---Start
playsound minecraft:block.piston.extend master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.lever.click master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.death master @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:end_rod ~ ~ ~ 0 0.5 0 0.3 30 force
###---演出---End
