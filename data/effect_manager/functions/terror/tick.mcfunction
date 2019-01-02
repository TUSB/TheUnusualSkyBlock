##############################
### 恐怖時間経過処理
##############################

### 恐怖カウント経過
scoreboard players remove @s TerrorLevel 1
### 恐怖回復処理呼び出し
execute if score @s TerrorLevel matches ..0 run function effect_manager:terror/cure
