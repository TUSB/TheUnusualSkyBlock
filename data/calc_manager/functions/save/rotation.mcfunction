##############################
### ローテーションをエンティティにセーブする
##############################

#Rotation YYY.Y-XXX.X 4桁ずつ計8桁 /2して負の値は0000~4999 正の値はこれに+5000して5000~9999
#Rotation [100.0f,-30.0f] = 10005300

function calc_manager:get/rotation1

#/10で有効数字3桁を2桁に＆ /2で精度半分
scoreboard players operation $RX1 Global /= $20 Const
scoreboard players operation $RY1 Global /= $20 Const
#正の値なら+500
execute if score $RX1 Global matches 1.. run scoreboard players add $RX1 Global 5000
execute if score $RY1 Global matches 1.. run scoreboard players add $RY1 Global 5000
#負の値なら*-1
execute if score $RX1 Global matches ..-1 run scoreboard players operation $RX1 Global *= $-1 Const
execute if score $RY1 Global matches ..-1 run scoreboard players operation $RY1 Global *= $-1 Const
#桁調整 RY1は*10,000
scoreboard players operation $RX1 Global *= $10000 Const
#Rotationに保存
scoreboard players operation @s Rotation = $RX1 Global
scoreboard players operation @s Rotation += $RY1 Global
