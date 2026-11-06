#> effect:enemy_debuff/freeze/second
#
# 敵凍結毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s FreezeTimer 1
execute if score @s FreezeTimer matches ..0 run return run function effect:enemy_debuff/freeze/cure

function makeup:effect/enemy_debuff/freeze/second
