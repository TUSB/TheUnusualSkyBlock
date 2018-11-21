##############################
### 止める
##############################

execute store result entity @s Motion[0] double 0 run scoreboard players get $1 Const
# execute store result entity @s Motion[1] double 0 run scoreboard players get $1 Const
execute store result entity @s Motion[2] double 0 run scoreboard players get $1 Const
tag @s remove Stopped
