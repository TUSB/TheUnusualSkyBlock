##############################
### 両手のポーズをランダムにする
##############################

data merge entity @s {Pose:{LeftArm:[0.1f,0.1f,0.1f],RightArm:[0.1f,0.1f,0.1f]}}

function calc_manager:update_random
execute store result entity @s Pose.LeftArm[0] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.LeftArm[1] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.LeftArm[2] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.RightArm[0] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get $Random Global
function calc_manager:update_random
execute store result entity @s Pose.RightArm[2] float 0.01 run scoreboard players get $Random Global
