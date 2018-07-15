##############################
### 鮭
##############################

#生鮭－生鮭　　 30-スキル/4%
#　　－失敗料理 40-スキル/4%
#　　ー焼き鮭　 30+スキル/2%

clear @s minecraft:salmon 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 300
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:salmon 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 400
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 300
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $2 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:cooked_salmon 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
