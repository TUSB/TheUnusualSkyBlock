##############################
### ローテーションをスコアにセットする
##############################

execute store result score $RX3 Global run data get entity @s Rotation[1] 1000
execute store result score $RY3 Global run data get entity @s Rotation[0] 1000
