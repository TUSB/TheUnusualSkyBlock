##############################
### 混乱処理
##############################

### 混乱カウント経過
scoreboard players remove @s ConfuseCount 1

### 混乱適用
function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const
execute if score $Random Global matches 0..4 run tp @s ~ ~ ~ ~180 ~

### 混乱回復処理呼び出し
execute if score @s ConfuseCount matches ..0 run function effect_manager:confuse/cure
