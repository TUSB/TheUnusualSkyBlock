##############################
### ワイルドクッキング超成功演出
##############################

###---演出---Start
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @p ~ ~ ~ 1 0.707
title @s times 0 40 20
title @s title [{"text":"","color":"green"},"調理大成功！"]
###---演出---End

scoreboard players set $Give Global 1

###スキルアップ
execute unless score @s CookingSkill matches 1000.. run tellraw @s [{"text":"","color":"green"},"調理スキルが",{"text":"0.1","color":"aqua"},"上がった！"]
execute unless score @s CookingSkill matches 1000.. run scoreboard players add @s CookingSkill 1
