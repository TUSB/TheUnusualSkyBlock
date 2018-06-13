##############################
### スコアを乗算する(百分率)
##############################

scoreboard players operation $X2 Global *= $M Global
scoreboard players operation $Y2 Global *= $M Global
scoreboard players operation $Z2 Global *= $M Global

scoreboard players operation $X2 Global /= $100 Const
scoreboard players operation $Y2 Global /= $100 Const
scoreboard players operation $Z2 Global /= $100 Const
