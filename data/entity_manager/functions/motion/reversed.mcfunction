##############################
### 反対向きに進む
##############################

tag @s[tag=Stop,scores={DecrementTimer=10}] remove Stop

execute if entity @s[tag=!Stop] store result entity @s Motion[0] double -0.01 run data get entity @s Motion[0] 1000
# execute if entity @s[tag=!Stop] store result entity @s Motion[1] double -0.001 run data get entity @s Motion[1] 1000
execute if entity @s[tag=!Stop] store result entity @s Motion[2] double -0.01 run data get entity @s Motion[2] 1000

execute if entity @s[tag=Stop] store result entity @s Motion[0] double 0 run scoreboard players get $1 Const
# execute if entity @s[tag=Stop] store result entity @s Motion[1] double 0 run scoreboard players get $1 Const
execute if entity @s[tag=Stop] store result entity @s Motion[2] double 0 run scoreboard players get $1 Const

execute store result score $Success Global run tag @s remove Stop
execute if score $Success Global matches 0 run tag @s add Stop
