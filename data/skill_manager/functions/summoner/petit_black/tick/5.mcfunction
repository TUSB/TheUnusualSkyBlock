##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.12
tp @e[distance=..5,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 1.0 1.0 1.0 0 50 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
