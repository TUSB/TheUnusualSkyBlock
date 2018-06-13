##############################
### ポジションをスコアにセットする
##############################

execute store result score $X2 Global run data get entity @s Pos[0] 1000
execute store result score $Y2 Global run data get entity @s Pos[1] 1000
execute store result score $Z2 Global run data get entity @s Pos[2] 1000
