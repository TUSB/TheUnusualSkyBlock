
### Distance内か詳しく調べる
# 範囲内ならダメージ付与

#距離取得(cm)
function calc:geometry/distance/

#ダメージ付与
execute if score 00000000-0000-0000-0000-000000000001 Calc <= _ Ret if score _ Ret <= 00000000-0000-0000-0000-000000000000 Calc run function skill:enemy/damage/apply

#目標タグ削除
tag @s remove TargetCards
