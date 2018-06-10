##############################
### ワイルドフレアMotion付与
##############################

execute store result score $X2 Global run data get entity @s Pos[0] 1000
execute store result score $Y2 Global run data get entity @s Pos[1] 1000
execute store result score $Z2 Global run data get entity @s Pos[2] 1000

scoreboard players operation $X2 Global -= $X Global
scoreboard players operation $Y2 Global -= $Y Global
scoreboard players operation $Z2 Global -= $Z Global

execute store result entity @s Motion[0] double 0.001 run scoreboard players get $X2 Global
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $Y2 Global
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $Z2 Global

