##############################
### ターゲット発見時
##############################

### タグセット
tag @s add HasTarget

### カーソル移動
function data_manager:move_cursor/data_id
### 動き定義を初期化
function data_manager:parameter/move_settings/load

### カーソル移動
function data_manager:move_cursor/target_id

### ヘイト付与
execute if entity @s[tag=!Bullet] run function data_manager:hate/current/generate

### ターゲット位置更新タイプがMemorizeなら、コピーを生成
execute if entity @s[tag=Destination.Memorize] run function behaviour_manager:behaviour_applier/target/searcher/on_hit/memorize
### ターゲット位置更新タイプがDirectionなら、コピーを生成して向きのみに
execute if entity @s[tag=Destination.Direction] run function behaviour_manager:behaviour_applier/target/searcher/on_hit/direction
