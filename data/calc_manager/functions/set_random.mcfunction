##############################
### 乱数を自身のGlobalにセットする。
##############################

# [obsolete]

function calc_manager:update_random
scoreboard players operation @s Global = $Random Global
