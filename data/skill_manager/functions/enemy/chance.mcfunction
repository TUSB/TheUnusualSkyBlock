##############################
### 敵スキルChance乱数計算
##############################

function calc_manager:update_random
scoreboard players operation $Random Global *= $100 Const
scoreboard players operation $Random Global /= $MWCBase Const
