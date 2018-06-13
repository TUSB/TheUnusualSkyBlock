##############################
### モーションをスコアにセットする
##############################

execute store result score $X2 Global run data get entity @s Motion[0] 1000
execute store result score $Y2 Global run data get entity @s Motion[1] 1000
execute store result score $Z2 Global run data get entity @s Motion[2] 1000
