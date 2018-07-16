##############################
### ワイルドクッキングエラー
##############################

###---演出---Start
playsound minecraft:entity.villager.death master @s ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"red"},"！ ！ ！"]
tellraw @a [{"text":"","color":"yellow"},"素材は消えてしまった…"]
###---演出---End

scoreboard players set $Give Global 1

execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill /= $2 Const
