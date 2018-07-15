##############################
### たまご
##############################

#卵ー卵　　　　　　　　　　 70-スキル/8%
#　－失敗料理　　　　　　　 10-スキル/8%
#　ー落下速度低下ポーション 20+スキル/4%

clear @s minecraft:egg 1

function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
scoreboard players operation $Threshold Global = $Random Global
scoreboard players remove $Threshold Global 1000

scoreboard players add $Threshold Global 700
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:egg 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/nothing

scoreboard players add $Threshold Global 100
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $8 Const
scoreboard players operation $Threshold Global -= $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/special
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/failure

scoreboard players add $Threshold Global 200
scoreboard players operation $Modifier Global = @s CookingSkill
scoreboard players operation $Modifier Global /= $4 Const
scoreboard players operation $Threshold Global += $Modifier Global
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run give @s minecraft:potion{display:{Name:"[\"§b§lたまごスープ\"]",Lore:["§rいっぱんてきな たまごりょうり","§rらっかそくどが げんしょうする"]},CustomPotionColor:8900331,CustomPotionEffects:[{Id:28b,Duration:3600,Amplifier:0b,ShowParticles:true}],HideFlags:32} 1
execute if score $Give Global matches 0 if score $Threshold Global matches 0.. run function skill_manager:hunter/wild_cooking/direction/success

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/error
