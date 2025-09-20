#> effect:enemy_debuff/virus/second
#
# 敵病気毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s VirusTimer 1
execute if score @s VirusTimer matches ..0 run return run function effect:enemy_debuff/virus/cure

function makeup:effect/enemy_debuff/virus/second
