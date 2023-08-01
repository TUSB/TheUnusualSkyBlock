#ダメージ表示
scoreboard players operation @s StoredDamage += @s[scores={Damage=-2147483648..}] Damage
execute if score @s StoredDamage matches ..-1 run function makeup:skill/damage/heal
scoreboard players operation 00000000-0000-0000-0000-000000000000 ElementFire = @s ElementFire
scoreboard players operation 00000000-0000-0000-0000-000000000000 ElementIce = @s ElementIce
scoreboard players operation 00000000-0000-0000-0000-000000000000 ElementLightning = @s ElementLightning
scoreboard players operation 00000000-0000-0000-0000-000000000000 ElementLight = @s ElementLight
scoreboard players operation 00000000-0000-0000-0000-000000000000 ElementDark = @s ElementDark
scoreboard players operation 00000000-0000-0000-0000-000000000000 StoredDamage = @s StoredDamage
data modify entity 0-0-0-0-0 Tags set from entity @s Tags
execute if entity @a[distance=..32] anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function enemy:show_damage/show
scoreboard players reset 00000000-0000-0000-0000-000000000000 ElementFire
scoreboard players reset 00000000-0000-0000-0000-000000000000 ElementIce
scoreboard players reset 00000000-0000-0000-0000-000000000000 ElementLightning
scoreboard players reset 00000000-0000-0000-0000-000000000000 ElementLight
scoreboard players reset 00000000-0000-0000-0000-000000000000 ElementDark
data modify entity 0-0-0-0-0 Tags set value [Initialized]
scoreboard players reset @s StoredDamage
