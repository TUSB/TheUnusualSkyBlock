##############################
### モーションをエンティティにセーブする
##############################

#Motion X.XX-Y.YY-Z.ZZ 3桁ずつ計9桁 /2して負の値は000~499 正の値はこれに+500して500~999
#Motion[1.23d,-4.56d,7.89d] = 561228894

function calc_manager:get/motion1

#/10で有効数字3桁を2桁に＆ /2で精度半分
scoreboard players operation $X1 Global /= $20 Const
scoreboard players operation $Y1 Global /= $20 Const
scoreboard players operation $Z1 Global /= $20 Const
#正の値なら+500
execute if score $X1 Global matches 1.. run scoreboard players add $X1 Global 500
execute if score $Y1 Global matches 1.. run scoreboard players add $Y1 Global 500
execute if score $Z1 Global matches 1.. run scoreboard players add $Z1 Global 500
#負の値なら*-1
execute if score $X1 Global matches ..-1 run scoreboard players operation $X1 Global *= $-1 Const
execute if score $Y1 Global matches ..-1 run scoreboard players operation $Y1 Global *= $-1 Const
execute if score $Z1 Global matches ..-1 run scoreboard players operation $Z1 Global *= $-1 Const
#桁調整 X1は*1,000,000 Y1は*1,000
scoreboard players operation $X1 Global *= $1000000 Const
scoreboard players operation $Y1 Global *= $1000 Const
#Motionに保存
scoreboard players operation @s Motion = $X1 Global
scoreboard players operation @s Motion += $Y1 Global
scoreboard players operation @s Motion += $Z1 Global
