#> enemy:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function enemy:one_second

### Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function enemy:damage/natural

### Mob Hitダメージ
execute if entity @s[tag=HitDamageTaken] run function enemy:damage/hit

#投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
