##############################
### ダメージを算出する
##############################

###クリティカル補正
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score @s ClericKnowledge matches 1.. run scoreboard players operation @s CritProbability *= $2 Cosnt
execute if score $Random Global < @s CritProbability run function skill_manager:damage_modifier/critical
execute if score @s ClericKnowledge matches 1.. run scoreboard players operation @s CritProbability /= $2 Cosnt

###ダメージ上限補正
scoreboard players operation $Damage Global < $DamageMax Const
