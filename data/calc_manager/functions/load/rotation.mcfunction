##############################
### ローテーションをエンティティにロードする
##############################

#Rotation YYY.Y-XXX.X 4桁ずつ計8桁 /2して負の値は0000~4999 正の値はこれに+5000して5000~9999
#Rotation [100.0f,-30.0f] = 10005300

#Rotationからロード
scoreboard players operation $RX1 Global = @s Rotation
scoreboard players operation $RY1 Global = @s Rotation
#桁調整
scoreboard players operation $RX1 Global %= $10000 Const
scoreboard players operation $RY1 Global /= $10000 Const
#負の値(0000~4999)なら*-1
execute if score $RX1 Global matches 0..4999 run scoreboard players operation $RX1 Global *= $-1 Const
execute if score $RY1 Global matches 0..4999 run scoreboard players operation $RY1 Global *= $-1 Const
#正の値(5000~9999)なら-500
execute if score $RX1 Global matches 5000..9999 run scoreboard players remove $RX1 Global 5000
execute if score $RY1 Global matches 5000..9999 run scoreboard players remove $RY1 Global 5000
#代入
execute store result entity @s Rotation[0] float 0.02 run scoreboard players get $RX1 Global
execute store result entity @s Rotation[1] float 0.02 run scoreboard players get $RY1 Global
