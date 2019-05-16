##############################
### AI状態とターゲット存在を確認
##############################

### カーソル移動
function data_manager:move_cursor/data_id
function data_manager:move_cursor/target_id

### AIタイプ判定
function behaviour_manager:behaviour_applier/action/repeater/check

### ターゲットが存在するかチェック
function data_manager:presence/check

### ターゲットなしならターゲットロスト処理
execute unless score $Presence SuccessCount matches 1.. run function behaviour_manager:behaviour_applier/target/lost
### ターゲットありでカスタムAIなら移動処理
execute if score $Presence SuccessCount matches 1.. if entity @s[tag=CustomAI] run function behaviour_manager:behaviour_applier/action/move/check
