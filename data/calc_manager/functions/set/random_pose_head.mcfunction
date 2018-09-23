##############################
### 頭のポーズをランダムにする
##############################

data merge entity @s {Pose:{Head:[0.1f,0.1f,0.1f]}}
function calc_manager:update_random
execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.Head[1] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.Head[2] float 0.01 run scoreboard players get $Random Global
