##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.18
execute positioned ~-1 ~-1 ~-1 run tp @e[dx=1,tag=Mob] @s
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.4 0.4 0.4 0 4 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
