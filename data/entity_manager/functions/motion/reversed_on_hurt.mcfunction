##############################
### 被ダメ時だけ反対に一瞬で進む
##############################

execute if entity @s[scores={DecrementTimer=10}] store result entity @s Motion[0] double -0.01 run data get entity @s Motion[0] 1000
# execute if entity @s[tag=!Stop] store result entity @s Motion[1] double -0.001 run data get entity @s Motion[1] 1000
execute if entity @s[scores={DecrementTimer=10}] store result entity @s Motion[2] double -0.01 run data get entity @s Motion[2] 1000

execute if entity @s[scores={DecrementTimer=9}] store result entity @s Motion[0] double 0 run scoreboard players get $1 Const
# execute if entity @s[tag=Stop] store result entity @s Motion[1] double 0 run scoreboard players get $1 Const
execute if entity @s[scores={DecrementTimer=9}] store result entity @s Motion[2] double 0 run scoreboard players get $1 Const
