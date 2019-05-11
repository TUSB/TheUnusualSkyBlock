##############################
### ターゲットが居るかと時間をチェック
##############################

### 行動時間超えている時処理
execute if score @s RepeaterToNext < @s GlobalCSTimer run function behaviour_manager:behaviour_applier/action/repeater/continue

### カーソル移動
function data_manager:move_cursor/target_id

### ターゲットが存在するかチェック
function data_manager:presence/check
### 居なかったらタゲ消し
execute unless score $Result SuccessCount matches 1.. run function behaviour_manager:behaviour_applier/target/lost
### 居たら残り実行
execute if score $Result SuccessCount matches 1.. if score @s GlobalCSTimer >= @s RepeaterToStart run function behaviour_manager:behaviour_applier/action/move
