##############################
### Vexバウンド処理
##############################

execute as @a[limit=1,sort=nearest,distance=..64] run function calc_manager:get/pos1
execute unless entity @a[limit=1,sort=nearest,distance=..64] run function calc_manager:get/pos1

execute store result entity @s BoundX int 0.001 run scoreboard players get $X1 Global
execute store result entity @s BoundY int 0.001 run scoreboard players get $Y1 Global
execute store result entity @s BoundZ int 0.001 run scoreboard players get $Z1 Global
