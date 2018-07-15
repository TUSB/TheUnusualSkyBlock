##############################
### 赤キノコ
##############################

#赤キノコ－赤キノコ　　　 60-スキル/8%
#　　　　－失敗料理　　　 20-スキル/8%
#　　　　ー茶キノコ  　　 20+スキル/4% ー茶キノコ　　　 90
#　　　　　 　　　　　　　　　　　　　　ーキノコシチュー 10

clear @s minecraft:red_mushroom 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 600
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:red_mushroom 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 200
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 200
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/recipes/chance/red_mushroom
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches ..-1 run function skill_manager:hunter/wild_cooking/direction/success
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success_high_quality

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
