##############################
### スコアを乗算する(百分率)
##############################

scoreboard players operation $X1 Global *= $M Global
scoreboard players operation $Y1 Global *= $M Global
scoreboard players operation $Z1 Global *= $M Global

scoreboard players operation $X1 Global /= $100 Const
scoreboard players operation $Y1 Global /= $100 Const
scoreboard players operation $Z1 Global /= $100 Const
