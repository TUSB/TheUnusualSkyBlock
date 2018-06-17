##############################
### ピアッシングエイム修正
##############################

###速度補正
execute store result entity @s Motion[0] double 0.003 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.003 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.003 run data get entity @s Motion[2] 1000
###ダメージ補正
execute store result score $Damage Global run data get entity @s damage 100
scoreboard players operation $Damage Global *= $DamageRate Global
scoreboard players operation $Damage Global /= $40 Const
execute store result entity @s damage double 0.01 run scoreboard players get $Damage Global
###属性付与
tag @s add Rapid
data merge entity @s {NoGravity:true}
