##############################
### ワイルドクッキング超成功演出
##############################

###---演出---Start
playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 0.707
playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 1 1.7
title @s times 0 40 20
title @s title [{"text":"","color":"green"},"調理大成功！"]
execute rotated ~ 0 run particle minecraft:happy_villager ^ ^1 ^1.7 0.4 0.1 0.4 0.05 30 force
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:50,Radius:2f,Duration:20,Color:16748800}
###---演出---End

scoreboard players set $Give Global 1

execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill /= $2 Const
###スキルアップ
execute unless score @s CookingSkill matches 1000.. run tellraw @s [{"text":"","color":"green"},"調理スキルが",{"text":"0.1","color":"aqua"},"上がった！"]
execute unless score @s CookingSkill matches 1000.. run scoreboard players add @s CookingSkill 1
