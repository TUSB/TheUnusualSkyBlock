##############################
### 特定のエンティティまたは座標に垂直方向だけ向かったときの向きをスコアにセットする
##############################

function calc_manager:get/direction1
execute store result score $Y1 Global if score $Y1 Global matches 0..
scoreboard players operation $Y1 Global *= $1000 Const
scoreboard players set $X1 Global 0
scoreboard players set $Z1 Global 0
