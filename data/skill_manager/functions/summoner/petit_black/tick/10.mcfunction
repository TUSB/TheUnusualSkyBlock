##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.02
tp @e[distance=..10,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust -1.07 0 -1.07 3 ~ ~ ~ 2.0 2.0 2.0 0 100 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
