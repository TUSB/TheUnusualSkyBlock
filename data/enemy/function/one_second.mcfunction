#> enemy:one_second
# 
# 1秒処理

# 10秒処理呼び出し 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function enemy:ten_seconds

# 敵火だるま1秒処理
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/second

# 敵帯電1秒処理
execute if entity @s[tag=EnemyElectrification] run function effect:enemy_debuff/electrification/second

# 敵呪蝕1秒処理
execute if entity @s[tag=EnemyCurse] run function effect:enemy_debuff/curse/second
