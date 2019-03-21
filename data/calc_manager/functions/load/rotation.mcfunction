##############################
### ローテーションをエンティティにロードする
##############################

#Rotation YYY.Y-XX.X 4桁ずつ計7桁
#Rotation [100.0f,-30.0f] = -1000300

#Rotationからロード
scoreboard players operation $RY1 Global = @s Rotation
scoreboard players operation $RX1 Global = @s Rotation
#桁調整
scoreboard players operation $RY1 Global /= $1000 Const
execute if score $RY1 Global matches ..-1 run scoreboard players operation $RX1 Global *= $-1 Const
scoreboard players operation $RX1 Global %= $1000 Const
execute if score $RY1 Global matches ..-1 run scoreboard players operation $RX1 Global *= $-1 Const
execute if score $RY1 Global matches ..-1 run scoreboard players operation $RY1 Global *= $-1 Const

#代入
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $RY1 Global
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $RX1 Global
