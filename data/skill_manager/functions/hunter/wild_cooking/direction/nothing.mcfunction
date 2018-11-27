##############################
### ワイルドクッキング失敗演出
##############################

###---演出---Start
playsound minecraft:entity.villager.no master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.puffer_fish.blow_out master @a[distance=..16] ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"yellow"},"調理失敗…"]
execute rotated ~ 0 run particle minecraft:cloud ^ ^1 ^1.7 0.2 0.1 0.2 0.05 15 force @a[tag=ShowParticles]
###---演出---End

scoreboard players set $Give Global 1

execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill /= $2 Const
