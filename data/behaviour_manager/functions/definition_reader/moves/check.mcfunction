##############################
### 動き定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/check_move_settings

### 定義持ちなら読み込み
execute if score $MoveSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/read_data
### 定義なしならデフォルト読み込み
execute if score $MoveSettings SuccessCount matches ..0 run function behaviour_manager:definition_reader/moves/default_data
