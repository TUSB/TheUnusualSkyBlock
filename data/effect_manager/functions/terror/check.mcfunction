##############################
### 恐怖処理
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global < @s TerrorLevel run function effect_manager:terror/fail
