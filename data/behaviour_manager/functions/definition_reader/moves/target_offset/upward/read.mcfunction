##############################
### ターゲット位置からの垂直上方向補正
##############################

### 垂直上方向補正(cm)
execute store result score @s TargetUpward run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.TargetOffset.Upward 100

### 0なら規定値設定
execute if score @s TargetUpward matches 0 run function behaviour_manager:definition_reader/moves/target_offset/upward/default
