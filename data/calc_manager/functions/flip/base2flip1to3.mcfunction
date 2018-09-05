##############################
### ローテーションでフリップする
##############################

function calc_manager:flip/round1
function calc_manager:flip/round2

scoreboard players operation $RX3 Global = $RX2 Global
scoreboard players operation $RX3 Global += $RX2 Global
scoreboard players operation $RX3 Global -= $RX1 Global

scoreboard players operation $RY3 Global = $RY2 Global
scoreboard players operation $RY3 Global += $RY2 Global
scoreboard players operation $RY3 Global -= $RY1 Global

function calc_manager:flip/round3
