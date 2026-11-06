#ダメージ表示 実行者の位置へ確実に合わせる
execute if score @s StoredDamage matches ..-1 run function makeup:skill/damage/heal
execute at @s if entity @a[distance=..32] run function enemy:damage/show/show
scoreboard players reset @s StoredDamage
