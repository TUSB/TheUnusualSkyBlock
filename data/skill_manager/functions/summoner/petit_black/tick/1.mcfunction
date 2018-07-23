##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.2
tp @e[distance=..1,tag=Mob] ~ ~ ~
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.2 0.2 0.2 0 5 force
###---演出---End

function skill_manager:summoner/petit_black/tick/common
