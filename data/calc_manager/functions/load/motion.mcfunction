##############################
### モーションをエンティティにロードする
##############################

#Motion X.XX-Y.YY-Z.ZZ 3桁ずつ計9桁 /2して負の値は000~499 正の値はこれに+500して500~999
#Motion[1.23d,-4.56d,7.89d] = 561228894

#Motionからロード
scoreboard players operation $X1 Global = @s Motion
scoreboard players operation $Y1 Global = @s Motion
scoreboard players operation $Z1 Global = @s Motion
#桁調整
scoreboard players operation $X1 Global /= $1000000 Const
scoreboard players operation $Y1 Global /= $1000 Const
scoreboard players operation $Y1 Global %= $1000 Const
scoreboard players operation $Z1 Global %= $1000 Const
#負の値(000~499)なら*-1
execute if score $X1 Global matches 0..499 run scoreboard players operation $X1 Global *= $-1 Const
execute if score $Y1 Global matches 0..499 run scoreboard players operation $Y1 Global *= $-1 Const
execute if score $Z1 Global matches 0..499 run scoreboard players operation $Z1 Global *= $-1 Const
#正の値(500~999)なら-500
execute if score $X1 Global matches 500..999 run scoreboard players remove $X1 Global 500
execute if score $Y1 Global matches 500..999 run scoreboard players remove $Y1 Global 500
execute if score $Z1 Global matches 500..999 run scoreboard players remove $Z1 Global 500
#代入
execute store result entity @s Motion[0] double 0.02 run scoreboard players get $X1 Global
execute store result entity @s Motion[1] double 0.02 run scoreboard players get $Y1 Global
execute store result entity @s Motion[2] double 0.02 run scoreboard players get $Z1 Global
