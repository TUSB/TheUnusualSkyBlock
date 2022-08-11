##############################
### ぽむぽむ花火爆発
##############################

#ダメージをロード
function skill:damage/load
#ダメージ付与
execute as @e[distance=..5,tag=Enemy] run function skill:damage/apply/
#演出
function makeup:skill/act/summoner/pompom/explode

kill @s