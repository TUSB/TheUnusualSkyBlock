##############################
### ターゲット発見時
##############################

### タグセット
tag @s add HasTarget
### 移動速度削除
data modify entity @s Attributes[{"Name":"generic.movementSpeed"}].Base set value 0

### カーソル移動
function data_manager:move_cursor/target_id

### ヘイト付与
execute if entity @s[tag=!Bullet] run function data_manager:hate/current/generate

### ターゲット位置更新タイプがMemorizeなら、コピーを生成
execute if entity @s[tag=Destination.Memorize] run function behaviour_manager:behaviour_applier/target/searcher/on_hit/memorize
### ターゲット位置更新タイプがDirectionなら、コピーを生成して向きのみに
execute if entity @s[tag=Destination.Direction] run function behaviour_manager:behaviour_applier/target/searcher/on_hit/direction
