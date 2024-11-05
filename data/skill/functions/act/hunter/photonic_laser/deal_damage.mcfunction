##############################
### フォトニックレーザーダメージ処理 1sごとに実行
##############################

#ダメージをロード
function skill:damage/load

execute as @e[tag=Enemy,distance=..3.5] run function skill:damage/apply/ 