#ダメージ表示
scoreboard players operation @s StoredDamage += @s[scores={Damage=-2147483648..}] Damage
execute if score @s StoredDamage matches ..-1 run function makeup:skill/damage/heal
execute if entity @a[distance=..32] run function enemy:show_damage/show
scoreboard players reset @s StoredDamage
