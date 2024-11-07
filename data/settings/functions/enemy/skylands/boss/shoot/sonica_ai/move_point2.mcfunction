#Function
# 移動先が埋まらないように
    tp @s ^ ^ ^0.1
    execute at @s unless block ~ ~ ~ #block:no_collision run function settings:enemy/skylands/boss/shoot/sonica_ai/move_point2
