#> enemy:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function enemy:one_second

## 忍者
# 居縮
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick

### Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function enemy:damage/natural

### 敵火だるま
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/tick

### Mob Hitダメージ
execute if entity @s[tag=HitDamageTaken] run function enemy:damage/hit

#投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
