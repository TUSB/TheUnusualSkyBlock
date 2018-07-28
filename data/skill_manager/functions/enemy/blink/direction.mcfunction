##############################
### 幻影演出
##############################

execute if score @s BlinkTick matches 6 run tp @s ~0.2 ~ ~0.2
execute if score @s BlinkTick matches 5 run tp @s ~ ~ ~-0.4
execute if score @s BlinkTick matches 4 run tp @s ~-0.4 ~ ~
execute if score @s BlinkTick matches 3 run tp @s ~ ~ ~0.4
execute if score @s BlinkTick matches 2 run tp @s ~0.4 ~ ~
execute if score @s BlinkTick matches 1 run tp @s ~-0.2 ~ ~-0.2
scoreboard players remove @s BlinkTick 1
execute if score @s BlinkTick matches 0 run effect clear @s minecraft:glowing
#execute if score @s BlinkTick matches 0 run effect clear @s minecraft:invisibility

###---演出---Start
execute if score @s BlinkTick matches 1..6 anchored eyes run particle minecraft:instant_effect ^ ^ ^ 0.05 0.2 0.05 0 10 force
#execute if score @s BlinkTick matches 1 run particle minecraft:cloud ~ ~1 ~ 0.7 0.7 0.7 0 30 force
###---演出---End
