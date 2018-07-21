##############################
### スコアをモーションにセットする
##############################

execute store result entity @s direction[0] double 0.001 run scoreboard players get $X1 Global
execute store result entity @s direction[1] double 0.001 run scoreboard players get $Y1 Global
execute store result entity @s direction[2] double 0.001 run scoreboard players get $Z1 Global
execute store result entity @s power[0] double 0.001 run scoreboard players get $X1 Global
execute store result entity @s power[1] double 0.001 run scoreboard players get $Y1 Global
execute store result entity @s power[2] double 0.001 run scoreboard players get $Z1 Global
