##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.08
tp @e[distance=..7,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust -1 0 -1 3 ~ ~ ~ 1.4 1.4 1.4 0 70 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
