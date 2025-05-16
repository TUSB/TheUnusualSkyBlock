#> enemy:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function enemy:ten_seconds

# 敵火だるま
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/second

## 忍者
# 介錯
execute if entity @s[scores={Kaishaku=1..}] run function skill:act/ninja/kaishaku/debuff_second
