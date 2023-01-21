#Function
## 移動先が埋まらないように
execute facing entity @a[distance=..64,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.1
execute at @s unless entity @a[distance=..0.1,sort=nearest,limit=1] unless block ~ ~ ~ #main:no_collision run function settings:enemy/skylands/boss/shoot/zedra/ai_move_point_if
