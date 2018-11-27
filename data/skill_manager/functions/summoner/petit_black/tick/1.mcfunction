##############################
### ぷちブラック毎tick処理１
##############################

tp @s ^ ^ ^0.2
execute positioned ~-0.5 ~-0.5 ~-0.5 run tp @e[dx=0,tag=Mob] @s
###---演出---Start
particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.2 0.2 0.2 0 3 force @a[tag=ShowParticles]
###---演出---End

function skill_manager:summoner/petit_black/tick/common
