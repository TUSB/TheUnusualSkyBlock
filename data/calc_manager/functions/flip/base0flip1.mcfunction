##############################
### ローテーションでフリップする
##############################

scoreboard players operation $RX1 Global *= $-1 Const
scoreboard players add $RY1 Global 180000

function calc_manager:flip/round1
