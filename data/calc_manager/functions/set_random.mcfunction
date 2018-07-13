##############################
### 乱数を自身のGlobalにセットする。
##############################

function calc_manager:update_random
scoreboard players operation @s Global = $Random Global
