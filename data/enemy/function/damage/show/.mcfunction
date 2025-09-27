#ダメージ表示
execute if score @s StoredDamage matches ..-1 run function makeup:skill/damage/heal
execute if entity @a[distance=..32] run function enemy:damage/show/show
scoreboard players reset @s StoredDamage
