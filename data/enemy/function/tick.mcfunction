#> enemy:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function enemy:one_second

## 忍者
# 居縮
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick
## 狩人
# ワイルドフレア
execute if entity @s[tag=WildFlareInterval] run function skill:act/hunter/wild_flare/tick_enemy

### Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function enemy:damage/natural

# 敵火だるま
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/tick

# 敵畏怖衝突
execute if score @s FearInterval matches 1.. as @e[tag=Enemy,distance=0.01..1.5] at @s run function effect:enemy_debuff/fear/collision

# 敵凍結解除判定
execute if entity @s[tag=EnemyFreeze] unless predicate effect:freeze run function effect:enemy_debuff/freeze/cure
execute if entity @s[tag=EnemyFreeze] positioned ~ ~-0.001 ~ if predicate effect:magma_block run function effect:enemy_debuff/freeze/cure

## 狩人
# ルカナントラップ
execute if entity @s[scores={Kasap=1..}] run function skill:act/hunter/kasap_trap/enemy_tick
# ボミオストラップ
execute if entity @s[scores={Decelerate=1..}] run function skill:act/hunter/decelerate_trap/enemy_tick

# Mob Hitダメージ
execute if entity @s[tag=HitDamageTaken] run function enemy:damage/hit

# ダメージ表示(10tickごと)
execute if score $Ticks Count matches 10 if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/

# 投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
