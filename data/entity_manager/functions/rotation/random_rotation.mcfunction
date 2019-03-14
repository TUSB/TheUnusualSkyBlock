##############################
### ランダムな向きに設定
##############################

execute if entity @s[tag=!Direction] run function calc_manager:set/random_rotation

execute if entity @s[tag=Direction] run function entity_manager:rotation/direction_random

execute rotated as @s positioned ^ ^ ^1 run function calc_manager:get/direction1

###100mをAir tickかけて進む
###set M to 10000/air ,need air >= 10
scoreboard players set $M Global 10000
execute store result score $D Global run data get entity @s Air 1
scoreboard players operation $M Global /= $D Global
function calc_manager:multiply/pos1

function calc_manager:set/motion1
function calc_manager:set/dir_and_pow
execute if entity @s[tag=Straight] run function calc_manager:save/rotation
