##############################
### 向き補正処理
##############################

function calc_manager:get/rotation1
execute store result score $RY2 Global run data get entity @s Dimension 1000
scoreboard players operation $RY1 Global += $RY2 Global
function calc_manager:set/rotation1
