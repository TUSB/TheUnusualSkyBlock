#> calc:set/random_pose_head
### 頭のポーズをランダムにする

data merge entity @s {Pose:{Head:[0.1f,0.1f,0.1f]}}
execute store result score _ Random run function calc:random
execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players get _ Random
execute store result score _ Random run function calc:random
execute store result entity @s Pose.Head[1] float 0.01 run scoreboard players get _ Random
execute store result score _ Random run function calc:random
execute store result entity @s Pose.Head[2] float 0.01 run scoreboard players get _ Random
