##############################
### ボミオストラップ継続
##############################

execute if entity @s[tag=Level1] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 0
execute if entity @s[tag=Level2] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 3
execute if entity @s[tag=Level3] run effect give @e[distance=..5,tag=Mob] minecraft:slowness 1 6

###---演出---Start
###---演出---End
