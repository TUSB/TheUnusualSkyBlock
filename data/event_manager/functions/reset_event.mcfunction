##############################
### イベントカウントリセット処理
##############################

### イベント発生スコアリセット
function calc_manager:update_random
scoreboard players operation $EventTimer Global = $Random Global
scoreboard players operation $EventTimer Global %= $30 Const
scoreboard players operation $EventTimer Global += $30 Const

### 演出終了
worldborder warning distance 0
