##############################
### 向きをランダムにする
##############################

function calc_manager:update_random
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get $Random Global
