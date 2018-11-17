##############################
### スリプガ処理
##############################

scoreboard players remove @s SleepgaTime 1

execute if score @s SleepgaTime matches ..0 run data merge entity @s {NoAI:false}

###---演出---Start
execute if score @s SleepgaTime matches ..0 run playsound minecraft:entity.guardian.hurt_land master @a[distance=..16] ~ ~ ~ 1 0
execute if score @s SleepgaTime matches ..0 run playsound minecraft:enchant.thorns.hit master @a[distance=..16] ~ ~ ~ 1 1.5
execute if score @s SleepgaTime matches ..0 anchored eyes run particle minecraft:enchanted_hit ^ ^ ^ 0 0 0 0.5 10 force

execute if score @s SleepgaTime matches 1.. run playsound minecraft:entity.drowned.ambient master @a[distance=..16] ~ ~ ~ 0.5 2
execute if score @s SleepgaTime matches 1.. run particle minecraft:cloud ^ ^ ^ 0 0.2 0 0.03 2 force
###---演出---End

execute if score @s SleepgaTime matches ..0 run scoreboard players reset @s SleepgaTime
