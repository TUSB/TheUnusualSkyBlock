##############################
### ワイルドクッキングエラー
##############################

###---演出---Start
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"red"},"？ ？ ？"]
tellraw @a [{"text":"","color":"yellow"},"調理できなかった…"]
execute rotated ~ 0 positioned ^ ^1 ^1.7 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 0 force @s
###---演出---End

execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill /= $2 Const
