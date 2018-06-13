##############################
### モーションをスコアにセットする
##############################

execute store result score $X1 Global run data get entity @s Motion[0] 1000
execute store result score $Y1 Global run data get entity @s Motion[1] 1000
execute store result score $Z1 Global run data get entity @s Motion[2] 1000
