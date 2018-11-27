##############################
### スリプガ処理
##############################

scoreboard players remove @s SleepgaTime 1

###---演出---Start
execute if score @s SleepgaTime matches 1.. run playsound minecraft:entity.drowned.ambient master @a[distance=..16] ~ ~ ~ 0.5 2
execute if score @s SleepgaTime matches 1.. run particle minecraft:cloud ^ ^ ^ 0 0.2 0 0.03 2 force @a[tag=ShowParticles]
###---演出---End

execute if score @s SleepgaTime matches ..0 run function skill_manager:black_mage/sleepga/wake
