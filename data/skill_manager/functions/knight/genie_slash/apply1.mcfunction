##############################
### 魔人斬り１
##############################

###---演出---Start
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @s minecraft:weakness 15 100
tp @s ~ ~-2 ~
execute as @s run data merge entity @s {Motion:[0d,1.5d,0d]}
scoreboard players add @s Damage 5000
effect give @s minecraft:slow_falling 1 0
