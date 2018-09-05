##############################
### ローテーションでフリップする
##############################

scoreboard players operation $RX2 Global *= $-1 Const
scoreboard players add $RY2 Global 180000

function calc_manager:flip/round2
