##############################
### 表示用数値取得
##############################

scoreboard players operation $Number Global = $Input Global
scoreboard players operation $Number Global %= $10 Const
scoreboard players operation $Input Global /= $10 Const
scoreboard players operation $Output Global *= $10 Const
scoreboard players operation $Output Global += $Number Global

execute if score $Input Global matches 1.. run function skill_manager:burst/get_score_to_show
