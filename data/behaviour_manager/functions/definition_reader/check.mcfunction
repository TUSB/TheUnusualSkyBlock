##############################
### パラメータ持ちかどうか判定
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### nbtチェック
function data_manager:parameter/check

### パラメータ持ちなら
execute if score $Parameter SuccessCount matches 1.. run function behaviour_manager:definition_reader/read_data
### パラメータなしならデフォルト読み込み
execute if score $Parameter SuccessCount matches ..0 run function behaviour_manager:definition_reader/default_data

### 探索距離を上書き
execute store result entity @s Attributes[{Name:"generic.FollowRange"}].Base double 0.01 run scoreboard players get @s FollowRange
