##############################
### かぼちゃ
##############################

#カボチャ－カボチャ　　　　　 60-スキル/8%
#　　　　－失敗料理 　　　　　10-スキル/4%
#　　　　－くりぬいたカボチャ 15-スキル/4%
#　　　　ーカボチャ種　　　　 15+スキル/8%
#　　　　－パンプキンパイ　　 0+スキル/2% －パンプキンパイ 90
#　　　　　　　　　　　　　　　　　　　　　－ジャックオランタン 10

clear @s minecraft:pumpkin 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 600
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:pumpkin 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 100
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 150
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:carved_pumpkin 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

scoreboard players add $Threshold Global 150
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:pumpkin_seeds 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

scoreboard players add $Threshold Global 0
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $2 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/recipes/chance/pumpkin
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches ..-1 run function skill_manager:hunter/wild_cooking/direction/success
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. if score $Chance Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success_high_quality

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
