##############################
### ワイルドクッキングエラー
##############################

###---演出---Start
playsound minecraft:entity.villager.death master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:enchant.thorns.hit master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 2
title @s times 0 40 20
title @s title [{"text":"","color":"red"},"！ ！ ！"]
tellraw @s [{"text":"","color":"yellow"},"素材は消えてしまった…"]
execute rotated ~ 0 run particle minecraft:cloud ^ ^1 ^1.7 1 0.4 1 0.06 50 force
###---演出---End

scoreboard players set $Give Global 1

execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill /= $2 Const
