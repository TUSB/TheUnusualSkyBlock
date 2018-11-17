##############################
### BaseのPower乗を返すサブルーチン
##############################

### 乗算
scoreboard players operation $PoweredValue Global *= $Base Global

### 回数デクリメント
scoreboard players remove $Power Global 1

### ループ回す
execute if score $Power Global matches 1.. run function calc_manager:power/loop
