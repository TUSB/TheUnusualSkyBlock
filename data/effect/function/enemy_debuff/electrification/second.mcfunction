#> effect:enemy_debuff/Electrification/second
#
# 敵帯電毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s ElectrificationTimer 1
execute if score @s ElectrificationTimer matches ..0 run return run function effect:enemy_debuff/electrification/cure

function makeup:effect/enemy_debuff/electrification/second
