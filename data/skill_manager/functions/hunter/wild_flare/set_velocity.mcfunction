##############################
### ワイルドフレアMotion付与
##############################

function calc_manager:get/pos2

scoreboard players operation $X2 Global -= $X1 Global
scoreboard players operation $Y2 Global -= $Y1 Global
scoreboard players operation $Z2 Global -= $Z1 Global

function calc_manager:set/motion2
