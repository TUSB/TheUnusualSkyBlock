##############################
### 振舞いチェック
##############################

### 自身のデータを更新
function data_manager:cursor/data_id/move
function data_manager:updater/mob/check

### ターゲットを取り得るならターゲットを取っているか確認
execute if entity @s[tag=UseTarget] run function behaviour_manager:target/checker/has_target

### ターゲットを取っていたらターゲットが存在するか確認
execute if entity @s[tag=HasTarget] run function behaviour_manager:target/checker/target_exists

### ターゲットをまだ持っていたらactionさせる
execute if entity @s[tag=HasTarget] run function behaviour_manager:action/check
