##############################
### ターゲット位置からの水平前方向補正
##############################

### 水平前方向補正(cm)
execute store result score @s TargetForward run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.TargetOffset.Forward 100

### 0なら規定値設定
execute if score @s TargetForward matches 0 run function behaviour_manager:definition_reader/moves/target_offset/forward/default
