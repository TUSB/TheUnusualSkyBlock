##############################
### りんご
##############################

#リンゴーリンゴ　 70-スキル/20%
#　　　－失敗料理 30-スキル/20%
#　　　－金リンゴ 0+スキル/10% ー金リンゴ　　 90
#　　　　　　　　　　　　　　　 ー上位金リンゴ 10

clear @s minecraft:apple 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 700
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $20 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:apple 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 300
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $20 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 000
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $10 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/recipes/chance/apple
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches ..-999 run function skill_manager:hunter/wild_cooking/direction/nothing
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches -998..-1 run function skill_manager:hunter/wild_cooking/direction/success
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success_high_quality

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
