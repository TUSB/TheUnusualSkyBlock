##############################
### 動き定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/move_settings/check

### 定義持ちなら読み込み
execute if score $MoveSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/read_data
### 定義なしならデフォルト読み込み
execute if score $MoveSettings SuccessCount matches ..0 run function behaviour_manager:definition_reader/moves/default_data

### 繰り返し回数に達していた場合は設定を消費
execute if score @s RepeaterCount <= @s RepeatedCount at 1-0-0-0-0 run function data_manager:parameter/move_settings/consume
execute if score @s RepeaterCount <= @s RepeatedCount run scoreboard players set @s RepeatedCount 0
