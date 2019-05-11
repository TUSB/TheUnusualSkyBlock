##############################
### リピータ―持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/check_move_repeater

### 定義持ちなら読み込み
execute if score $Repeater SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/repeater/read_data
### 定義なしならデフォルト読み込み
execute if score $Repeater SuccessCount matches ..0 run function behaviour_manager:definition_reader/moves/repeater/default_data
