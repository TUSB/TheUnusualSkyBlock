#> effect:enemy_debuff/burn/second
#
# 敵火だるま毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s BurnTimer 1
execute if score @s BurnTimer matches ..0 run return run function effect:enemy_debuff/burn/cure

# 自身と付近のEnemyに物理10ダメージ
execute as @e[tag=Enemy,distance=..1] run function effect:enemy_debuff/burn/damage

function makeup:effect/enemy_debuff/burn/second
