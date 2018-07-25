##############################
### ボミオストラップ継続
##############################

execute if entity @s[tag=Level1] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 0
execute if entity @s[tag=Level2] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 3
execute if entity @s[tag=Level3] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 6

###---演出---Start
particle minecraft:falling_dust minecraft:diamond_block ~ ~0.7 ~ 1.7 0 1.7 1 3 force
particle minecraft:falling_dust minecraft:lapis_block ~ ~0.5 ~ 2.5 0 2.5 1 6 force
###---演出---End
