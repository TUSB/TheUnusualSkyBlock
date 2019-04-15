##############################
### ターゲット相対位置X読み込み
##############################

### ターゲット相対位置X
execute store result score @s TargetOffsetX run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetOffset.X 100

### 0なら規定値設定
execute if score @s TargetOffsetX matches 0 run function behaviour_manager:definition_reader/direction/target_offset/x/default
