##############################
### ダメージを算出する
##############################

###狩人オーラ適用
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if entity @a[distance=..20,Job=3,scores={Aura=0..}] if score $Random Global >= $80 Const run scoreboard players operation $Damage Global *= $10 Const

###クリティカル補正
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s CritProbability run scoreboard players operation $Damage Global *= @s CritRate
execute if score $Random Global < @s CritProbability run scoreboard players operation $Damage Global /= $100 Const
