##############################
### 乱数を自身のGlobalにセットする。
##############################

# [[Obsolete]]

function calc_manager:update_random
scoreboard players operation @s Global = $Random Global
