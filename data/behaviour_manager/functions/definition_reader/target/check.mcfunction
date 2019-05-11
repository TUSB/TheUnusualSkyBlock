##############################
### ターゲット定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/check_target_settings

### 定義持ちなら読み込み
execute if score $TargetSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/target/read_data
### 定義なしならデフォルト読み込み
execute if score $TargetSettings SuccessCount matches ..0 run function behaviour_manager:definition_reader/target/default_data

### 探索開始時間を規定値に設定(cs)
scoreboard players set @s TimeToSearch 0
