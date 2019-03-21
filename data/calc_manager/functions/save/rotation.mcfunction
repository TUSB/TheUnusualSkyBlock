##############################
### ローテーションをエンティティにセーブする
##############################

#Rotation YYY.Y-XX.X 4桁ずつ計7桁
#Rotation [100.0f,-30.0f] = -1000300

function calc_manager:get/rotation1

execute if score $RY1 Global matches ..-1 run scoreboard players add $RY1 Global 360000
scoreboard players operation $RY1 Global /= $100 Const
scoreboard players operation $RY1 Global *= $1000 Const
scoreboard players operation $RX1 Global /= $100 Const
execute if score $RX1 Global matches ..-1 run scoreboard players operation $RY1 Global *= $-1 Const

#Rotationに保存
scoreboard players operation @s Rotation = $RY1 Global
scoreboard players operation @s Rotation += $RX1 Global
#execute if score $Minus Global matches 1 run scoreboard players operation @s Rotation *= $-1 Const
