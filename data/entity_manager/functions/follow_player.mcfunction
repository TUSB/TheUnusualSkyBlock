##############################
### プレイヤーふよふよ狙い
##############################

###モーション取得
execute at @p[nbt=!{Health:0.0f}] positioned ~ ~1.52 ~ run function calc_manager:get/direction1xz
###モーション調整
scoreboard players set $M Global 40
function calc_manager:multiply/pos1
###MotionY調整
scoreboard players operation $Y1 Global = $SignY Global
###MotionY乱数適用
function calc_manager:update_random
scoreboard players operation $Y1 Global *= $Random Global 
scoreboard players operation $Y1 Global /= $100 Const
###Motion反映
function calc_manager:set/motion1
