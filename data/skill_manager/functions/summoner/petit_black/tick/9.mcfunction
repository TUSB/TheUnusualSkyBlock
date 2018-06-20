##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.04
tp @e[distance=..9,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 1.8 1.8 1.8 0 90 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
