##############################
### ターゲット相対位置Y読み込み
##############################

### ターゲット相対位置Y
execute store result score @s TargetOffsetY run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetOffset.Y 100

### 0なら規定値設定
execute if score @s TargetOffsetY matches 0 run function behaviour_manager:definition_reader/direction/target_offset/y/default
