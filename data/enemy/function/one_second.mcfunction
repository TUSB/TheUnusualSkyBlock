#> enemy:one_second
# 
# 1秒処理

# 10秒処理呼び出し 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function enemy:ten_seconds

## 忍者
# 介錯
execute if entity @s[scores={Kaishaku=1..}] run function skill:act/ninja/kaishaku/debuff_second

# 敵火だるま1秒処理
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/second

# 敵凍結1秒処理
execute if entity @s[tag=EnemyFreeze] run function effect:enemy_debuff/freeze/second

# 敵帯電1秒処理
execute if entity @s[tag=EnemyElectrification] run function effect:enemy_debuff/electrification/second

# 敵呪蝕1秒処理
execute if entity @s[tag=EnemyCurse] run function effect:enemy_debuff/curse/second

# 敵病気1秒処理
execute if entity @s[tag=EnemyVirus] run function effect:enemy_debuff/virus/second

## ダメージ表示
execute if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:damage/show/
