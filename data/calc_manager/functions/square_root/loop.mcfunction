##############################
### 平方根ループ
##############################

scoreboard players operation $Current Global = $Next Global

### An+1 = An - (An * An - T) / (An * 2)
scoreboard players operation $Next Global *= $Next Global
scoreboard players operation $Next Global -= $Target Global
scoreboard players operation $Next Global /= $Current Global
scoreboard players operation $Next Global /= $2 Const
scoreboard players operation $Next Global -= $Current Global
scoreboard players operation $Next Global *= $-1 Const

execute unless score $Next Global = $Current Global run function calc_manager:square_root/loop
