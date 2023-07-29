#ダメージ表示
scoreboard players operation @s StoredDamage += @s[scores={Damage=-2147483648..}] Damage
execute if score @s StoredDamage matches ..-1 run function makeup:skill/damage/heal
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage = @s StoredDamage
execute if entity @a[distance=..32] anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function enemy:show_damage/show
scoreboard players reset @s StoredDamage
