##############################
### ヒール 回復
##############################

scoreboard players operation @s HP += $Amount Global
scoreboard players operation @s HP < @s MaxHP

###---演出---Start
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 15 force @a[tag=ShowParticles]
###---演出---End
