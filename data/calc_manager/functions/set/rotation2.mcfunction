##############################
### スコアをローテーションにセットする
##############################

execute store result entity @s Rotation[1] float 0.001 run scoreboard players get $RX2 Global
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get $RY2 Global
