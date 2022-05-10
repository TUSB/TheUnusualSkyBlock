##############################
### フォトニックレーザー毎tick処理
##############################

#ダメージ
execute as @e[tag=Enemy,distance=..3.5] run function skill:damage/apply/ 

#演出
function makeup:skill/act/hunter/photonic_laser/tick1
