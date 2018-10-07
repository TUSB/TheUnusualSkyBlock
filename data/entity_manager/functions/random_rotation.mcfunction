##############################
### ランダムな向きに設定
##############################

#水平
function calc_manager:update_random
execute store result entity @s Rotation[0] float 1 run scoreboard players get $Random Global

#垂直
function calc_manager:update_random
execute store result entity @s Rotation[1] float 1 run scoreboard players get $Random Global

execute rotated as @s positioned ^ ^ ^1 run function calc_manager:get/direction1

###100mをAir tickかけて進む
###set M to 10000/air ,need air >= 10
scoreboard players set $M Global 10000
execute store result score $D Global run data get entity @s Air 1
scoreboard players operation $M Global /= $D Global
function calc_manager:multiply/pos1

function calc_manager:set/motion1
function calc_manager:set/dir_and_pow
