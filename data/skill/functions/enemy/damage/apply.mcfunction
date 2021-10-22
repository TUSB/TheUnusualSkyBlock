
### Distance内か詳しく調べる
# 範囲内ならダメージ付与

#距離取得(cm)
execute at @s as @e[tag=MobToDamage,limit=1] run function calc:geometry/distance/

#ダメージ付与
execute if score 0-0-0-0-1 Calc < _ Ret if score _ Ret < 0-0-0-0-0 Calc run function skill:damage/apply/

#目標タグ削除
tag @s remove TargetCards
