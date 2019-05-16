##############################
### 繰り返し動作コンティニュー
##############################

### 設定を確認
function data_manager:parameter/move_settings/check

### 設定が存在しなければ行動時間を無限遠に
execute unless score $MoveSettings SuccessCount matches 1.. run scoreboard players set @s RepeaterToStart 2147483647
execute unless score $MoveSettings SuccessCount matches 1.. run scoreboard players set @s RepeaterToNext 2147483647

### 繰り返した回数を加算
scoreboard players add @s RepeatedCount 1
### 設定が存在したら読み込み
execute if score $MoveSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/check

### AI解除扱いにする
function behaviour_manager:custom_ai/off
