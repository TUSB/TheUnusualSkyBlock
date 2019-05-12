##############################
### 繰り返し動作コンティニュー
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### 設定を確認
function data_manager:parameter/move_settings/check

### 設定が存在しなければ行動時間を無限遠に
execute unless score $MoveSettings SuccessCount matches 1.. run scoreboard players set @s RepeaterToStart 2147483647
execute unless score $MoveSettings SuccessCount matches 1.. run scoreboard players set @s RepeaterToNext 2147483647

### 設定が存在したら読み込み
## 繰り返した回数を加算
scoreboard players add @s RepeatedCount 1
execute if score $MoveSettings SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/check
