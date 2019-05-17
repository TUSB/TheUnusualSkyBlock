##############################
### 範囲で割った値を返す(更新後)
##############################

### 乱数更新
function calc_manager:random/next
### +1して割るだけ
scoreboard players operation $_ Random = $Range Random
scoreboard players add $_ Random 1
scoreboard players operation $Result Random %= $_ Random
