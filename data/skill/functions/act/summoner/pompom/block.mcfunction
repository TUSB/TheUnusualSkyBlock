##############################
### ぽむぽむ花火ブロックにヒット
##############################

#ダメージをロード
function skill:damage/load
#ダメージ付与
execute as @e[distance=..2,tag=Mob] run function skill:damage/apply/
#kill
tag @s add Garbage
#演出
execute positioned ~ ~-1 ~ run function makeup:skill/act/summoner/pompom/hit
