##############################
### ターゲットが居るかチェック
##############################

### カーソル移動
function data_manager:move_cursor/target_id

### 行動時間超えている時処理
execute if score @s RepeaterToNext >= @s GlobalCSTimer run function behaviour_manager:behaviour_applier/action/repeater/continue
### 行動時間判定
execute if score @s RepeaterToStart >= @s GlobalCSTimer run function ...

### ターゲットが存在するかチェック
function data_manager:presence/check
### 居なかったらタゲ消し
execute unless score $Result SuccessCount matches 1.. run function behaviour_manager:behaviour_applier/target/lost
### 居たら残り実行
execute if score $Result SuccessCount matches 1.. run function behaviour_manager:behaviour_applier/action/move
