#> effect:player_debuff/revival_sickness/cure
#
# 復活酔い解除処理
scoreboard players reset @s RevivalSicknessTimer
effect clear @s mining_fatigue

# 演出
function makeup:effect/player_debuff/revival_sickness/cure
