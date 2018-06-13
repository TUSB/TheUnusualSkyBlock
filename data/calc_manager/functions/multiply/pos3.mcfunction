##############################
### スコアを乗算する(百分率)
##############################

scoreboard players operation $X3 Global *= $M Global
scoreboard players operation $Y3 Global *= $M Global
scoreboard players operation $Z3 Global *= $M Global

scoreboard players operation $X3 Global /= $100 Const
scoreboard players operation $Y3 Global /= $100 Const
scoreboard players operation $Z3 Global /= $100 Const
