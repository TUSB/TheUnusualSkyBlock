##############################
### 特定のエンティティまたは座標に水平方向だけ向かったときの向きをスコアにセットする
##############################

function calc_manager:get/direction1xz
scoreboard players operation $Y1 Global = $SignY Global
scoreboard players operation $Y1 Global *= $1000 Const
scoreboard players set $X1 Global 0
scoreboard players set $Z1 Global 0
