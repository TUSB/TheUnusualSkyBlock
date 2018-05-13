##############################
### 討伐ボーナス回復
##############################

###ボーナス付与

###カウントリセット
function calc_manager:update_random
scoreboard players operation $Healing Count = $Random Global
scoreboard players operation $Healing Count %= $50 Const
scoreboard players add $Healing Count 50
