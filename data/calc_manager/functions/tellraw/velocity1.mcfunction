##############################
### スコアの速度を表示する
##############################

scoreboard players operation $VX1 Global = $X1 Global
scoreboard players operation $VX1 Global *= $X1 Global
scoreboard players operation $VY1 Global = $Y1 Global
scoreboard players operation $VY1 Global *= $Y1 Global
scoreboard players operation $VZ1 Global = $Z1 Global
scoreboard players operation $VZ1 Global *= $Z1 Global

scoreboard players operation $V1 Global = $VX1 Global
scoreboard players operation $V1 Global += $VY1 Global
scoreboard players operation $V1 Global += $VZ1 Global

tellraw @a ["V1: ",{"score":{"name":"$V1","objective":"Global"}}]
