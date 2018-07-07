##############################
### プレイヤーふよふよ狙い
##############################

###モーション取得
execute at @p[scores={TimeSinceDeath=1..}] positioned ~ ~1 ~ run function calc_manager:get/direction1xz
###モーション調整
scoreboard players set $M Global 40
function calc_manager:multiply/pos1
###MotionY調整
scoreboard players operation $Y1 Global = $SignY Global
###MotionY乱数適用
function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const
execute store result score $Modifier Global run data get entity @s Attributes[0].Modifiers[0].Amount 1000
scoreboard players operation $Modifier Global *= $Random Global
scoreboard players operation $Modifier Global /= $100 Const
scoreboard players operation $Y1 Global *= $Modifier Global
###Motion反映
function calc_manager:set/motion1
