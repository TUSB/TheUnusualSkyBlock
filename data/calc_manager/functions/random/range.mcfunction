##############################
### 範囲で割った値を返す(更新後)
##############################

### 乱数更新
function calc_manager:random/next
### 割るだけ
scoreboard players operation $Result Random %= $Range Random
