##############################
### ピアッシングエイム適用
##############################

###速度補正
execute store result entity @s Motion[0] double 0.003 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.003 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.003 run data get entity @s Motion[2] 1000
###ダメージ補正
function skill:damage/modify

data modify entity @s NoGravity set value 1b
data modify entity @s PierceLevel set value 3
