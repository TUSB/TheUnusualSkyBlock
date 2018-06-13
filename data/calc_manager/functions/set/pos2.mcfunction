##############################
### スコアをポジションにセットする
##############################

execute store result entity @s Pos[0] double 0.001 run scoreboard players get $X2 Global
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $Y2 Global
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $Z2 Global
