##############################
### 配分点を求める
##############################

scoreboard players operation $X1 Global *= $Weight1 Global
scoreboard players operation $Y1 Global *= $Weight1 Global
scoreboard players operation $Z1 Global *= $Weight1 Global

scoreboard players operation $X2 Global *= $Weight2 Global
scoreboard players operation $Y2 Global *= $Weight2 Global
scoreboard players operation $Z2 Global *= $Weight2 Global

scoreboard players operation $X1 Global += $X2 Global
scoreboard players operation $Y1 Global += $Y2 Global
scoreboard players operation $Z1 Global += $Z2 Global

scoreboard players operation $WeightSum Global = $Weight1 Global
scoreboard players operation $WeightSum Global += $Weight2 Global

scoreboard players operation $X1 Global /= $WeightSum Global
scoreboard players operation $Y1 Global /= $WeightSum Global
scoreboard players operation $Z1 Global /= $WeightSum Global
