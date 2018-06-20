##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.14
tp @e[distance=..4,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.8 0.8 0.8 0 40 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
