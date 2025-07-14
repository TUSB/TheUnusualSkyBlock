#> enemy:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function enemy:one_second

# Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function enemy:damage/natural

# 敵火だるま
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/tick

# 敵畏怖衝突
execute if score @s FearInterval matches 1.. as @e[tag=Enemy,distance=..1] at @s run function effect:enemy_debuff/fear/collision

# Mob Hitダメージ
execute if entity @s[tag=HitDamageTaken] run function enemy:damage/hit

# 投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
