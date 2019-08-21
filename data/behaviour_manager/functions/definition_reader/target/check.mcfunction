##############################
### ターゲット定義持ちかどうか判定
##############################

### nbtチェック
function data_manager:parameter/target_settings/check

### 定義持ちなら読み込み
execute if score $TargetSettings ItSelf matches 1.. run function behaviour_manager:definition_reader/target/read_data
### 定義なしならデフォルト読み込み
execute if score $TargetSettings ItSelf matches ..0 run function behaviour_manager:definition_reader/target/default_data

### 探索距離を上書き
execute store result entity @s Attributes[{Name:"generic.FollowRange"}].Base double 0.01 run scoreboard players get @s FollowRange
### 諦め距離設定
scoreboard players operation @s LostRange = @s FollowRange
scoreboard players operation @s LostRange += @s FollowRange
