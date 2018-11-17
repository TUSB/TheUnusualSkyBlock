##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.06
tp @e[distance=..8,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust -1 0 -1 3.4 ~ ~ ~ 1.6 1.6 1.6 0 11 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
