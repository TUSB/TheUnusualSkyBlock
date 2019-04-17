##############################
### ターゲット位置Z読み込み
##############################

### ターゲット位置Z
execute store result score @s TargetPosZ run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetPos.Z 100

### 0なら規定値設定
execute if score @s TargetPosZ matches 0 run function behaviour_manager:definition_reader/directions/target_pos/z/default
