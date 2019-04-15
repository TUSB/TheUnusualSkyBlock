##############################
### ターゲット位置Y読み込み
##############################

### ターゲット位置Y
execute store result score @s TargetPosY run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetPos.Y 100

### 0なら規定値設定
execute if score @s TargetPosY matches 0 run function behaviour_manager:definition_reader/direction/target_pos/y/default
