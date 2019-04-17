##############################
### ターゲット位置更新間隔読み込み
##############################

### ターゲット位置更新間隔
execute store result score @s TargetUpdateTick run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].UpdateTick

### 0以下なら規定値設定
execute if score @s TargetUpdateTick matches ..0 run function behaviour_manager:definition_reader/directions/update_tick/default
