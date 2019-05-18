##############################
### ターゲットを失っていないかどうか
##############################

### カーソル移動
function data_manager:cursor/target_id/move

### ターゲットが存在するかチェック
function data_manager:presence/check

### 存在したら距離を確認
execute if score $Presence SuccessCount matches 1.. run function behaviour_manager:target/checker/distance

### もう存在しなければロスト処理
execute unless score $Presence SuccessCount matches 1.. run function behaviour_manager:target/searcher/lost
