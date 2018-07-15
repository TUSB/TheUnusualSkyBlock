##############################
### ワイルドクッキング成功演出
##############################

###---演出---Start
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1
title @s times 0 40 20
title @s title [{"text":"","color":"green"},"調理成功！"]
###---演出---End

scoreboard players set $Give Global 1

###スキルアップ
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global matches ..9 unless score @s CookingSkill matches 1000.. run tellraw @s [{"text":"","color":"green"},"調理スキルが",{"text":"0.2","color":"aqua"},"上がった！"]
execute if score $Random Global matches ..9 unless score @s CookingSkill matches 1000.. run scoreboard players add @s CookingSkill 2
scoreboard players operation @s CookingSkill < $1000 Const
