##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.02
tp @e[distance=..10,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust -1 0 -1 3 ~ ~ ~ 2.0 2.0 2.0 0 92 force
particle minecraft:dust 100000000 2 1 3 ~ ~ ~ 2.0 2.0 2.0 0 8 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
