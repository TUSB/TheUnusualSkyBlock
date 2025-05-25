#> effect:enemy_debuff/curse/second
#
# 敵呪蝕毎秒処理

# 残り時間をカウント、0以下なら解除
scoreboard players remove @s CurseTimer 1
execute if score @s CurseTimer matches ..0 run return run function effect:enemy_debuff/curse/finalize

function makeup:effect/enemy_debuff/curse/second
