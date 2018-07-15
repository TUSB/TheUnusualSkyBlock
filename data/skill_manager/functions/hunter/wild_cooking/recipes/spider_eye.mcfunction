##############################
### 蜘蛛の目
##############################

#蜘蛛の目ー蜘蛛の目　　　　 70-スキル/8%
#　　　　－失敗料理　　　　 10-スキル/8%
#　　　　ー発酵した蜘蛛の目 10+スキル/8%
#　　　　ー弱化のポーション 10+スキル/8%

clear @s minecraft:spider_eye 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 700
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:spider_eye 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 100
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 100
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:fermented_spider_eye 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

scoreboard players add $Threshold Global 100
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:potion{display:{Name:"[\"§4§lコテコテスープ\"]",Lore:["§rのうこうだが まずい スープ","§rこうげきりょくが げんしょうする"]},CustomPotionColor:14423100,CustomPotionEffects:[{Id:18b,Duration:300,Amplifier:4b,ShowParticles:true}],HideFlags:32} 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
