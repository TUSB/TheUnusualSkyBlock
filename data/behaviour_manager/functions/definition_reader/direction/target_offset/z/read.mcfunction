##############################
### ターゲット相対位置Z読み込み
##############################

### ターゲット相対位置Z
execute store result score @s TargetOffsetZ run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetOffset.Z 100

### 0なら規定値設定
execute if score @s TargetOffsetZ matches 0 run function behaviour_manager:definition_reader/direction/target_offset/z/default
