##############################
### フォトニックレーザー毎tick処理
##############################

#ダメージ
execute if score @s Interval matches 1 as @e[tag=Mob,distance=..3.5] run function skill:damage/apply/ 

#演出
function makeup:skill/act/hunter/photonic_lazer/tick1
