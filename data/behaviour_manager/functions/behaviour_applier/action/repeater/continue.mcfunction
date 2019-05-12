##############################
### 繰り返し動作コンティニュー
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### 繰り返した回数を加算
scoreboard players add @s RepeatedCount 1
### 設定を確認
function data_manager:parameter/move_settings/check

### 設定が存在したら読み込み
execute if score $MoveSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/check
