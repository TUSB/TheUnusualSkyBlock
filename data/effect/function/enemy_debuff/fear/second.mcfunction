#> effect:enemy_debuff/fear/second
#
# 敵畏怖毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s FearTimer 1
execute if score @s FearTimer matches ..0 run return run function effect:enemy_debuff/fear/cure

function makeup:effect/enemy_debuff/fear/second
