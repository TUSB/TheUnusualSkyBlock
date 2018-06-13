##############################
### スコアをモーションにセットする
##############################

execute store result entity @s Motion[0] double 0.001 run scoreboard players get $X1 Global
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $Y1 Global
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $Z1 Global
