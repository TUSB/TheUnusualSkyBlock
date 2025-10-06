#> enemy:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function enemy:one_second

# Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function enemy:damage/natural

# 敵火だるま
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/tick

# 敵凍結解除判定
execute if entity @s[tag=EnemyFreeze] unless predicate effect:freeze run function effect:enemy_debuff/freeze/cure
execute if entity @s[tag=EnemyFreeze] positioned ~ ~-0.001 ~ if predicate effect:magma_block run function effect:enemy_debuff/freeze/cure

# Mob Hitダメージ
execute if entity @s[tag=HitDamageTaken] run function enemy:damage/hit

# ダメージ表示(10tickごと)
execute if score $Ticks Count matches 10 if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/

#投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
