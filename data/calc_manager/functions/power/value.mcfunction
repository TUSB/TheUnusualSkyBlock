##############################
### BaseのPower乗を返す
##############################

### 戻り値初期化
scoreboard players set $PoweredValue Global 1

### ループ回す
execute if score $Power Global matches 1.. run function calc_manager:power/loop
