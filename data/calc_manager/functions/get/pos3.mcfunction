##############################
### ポジションをスコアにセットする
##############################

execute store result score $X3 Global run data get entity @s Pos[0] 1000
execute store result score $Y3 Global run data get entity @s Pos[1] 1000
execute store result score $Z3 Global run data get entity @s Pos[2] 1000
