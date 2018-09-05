##############################
### ローテーションでフリップする
##############################

scoreboard players operation $RX3 Global *= $-1 Const
scoreboard players add $RY3 Global 180000

function calc_manager:flip/round3
