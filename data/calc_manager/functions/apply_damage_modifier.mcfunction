##############################
### ダメージを算出する
##############################

###狩人オーラ適用
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if entity @a[distance=..32,scores={Job=3,Aura=0..}] if score $Random Global >= $80 Const run scoreboard players operation $Damage Global *= $10 Const

###クリティカル補正
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score @s ClericKnowledge matches 1.. run scoreboard players operation @s CritProbability *= $2 Cosnt
execute if score $Random Global < @s CritProbability run scoreboard players operation $Damage Global /= $100 Const
execute if score $Random Global < @s CritProbability run scoreboard players operation $Damage Global *= @s CritRate
execute if score $Debug Settings matches 1 if score $Random Global < @s CritProbability run me クリティカル！
execute if score @s ClericKnowledge matches 1.. run scoreboard players operation @s CritProbability /= $2 Cosnt

###ダメージ上限補正
scoreboard players operation $Damage Global < $DamageMax Const
