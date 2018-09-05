##############################
### スコアをローテーションにセットする
##############################

execute store result entity @s Rotation[1] float 0.001 run scoreboard players get $RX3 Global
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get $RY3 Global
