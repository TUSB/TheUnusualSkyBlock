##############################
### 牛肉
##############################

#牛肉－牛肉　　 30-スキル/2%
#　　ー失敗料理 30-スキル/2%
#　　ーステーキ 40+スキル%

clear @s minecraft:beef 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 300
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $2 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:beef 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 300
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $2 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 400
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $1 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:cooked_beef 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
