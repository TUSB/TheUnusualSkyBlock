##############################
### プレイヤーふよふよ狙い
##############################

###モーション取得
execute at @p[nbt=!{Health:0.0f}] positioned ~ ~1.52 ~ rotated ~ 0 run function calc_manager:get/direction1
###モーション調整
scoreboard players set $M Global 40
function calc_manager:multiply/pos1
###MotionY調整
execute if score $Y1 Global matches 1.. run scoreboard players set $Y1 Global 1
execute if score $Y1 Global matches ..-1 run scoreboard players set $Y1 Global -1
###MotionY乱数適用
function calc_manager:update_random
scoreboard players operation $Y1 Global *= $Random Global 
scoreboard players operation $Y1 Global /= $100 Const
###Motion反映
function calc_manager:set/motion1
