##############################
### ターゲット定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/check_target_settings

### 定義持ちなら読み込み
execute if score $TargetSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/target/read_data
### 定義なしならデフォルト読み込み
execute if score $TargetSettings SuccessCount matches ..0 run function behaviour_manager:definition_reader/target/default_data

### 探索距離を上書き
execute store result entity @s Attributes[{Name:"generic.FollowRange"}].Base double 0.01 run scoreboard players get @s FollowRange
