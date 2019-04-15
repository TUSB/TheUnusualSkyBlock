##############################
### ターゲット位置X読み込み
##############################

### ターゲット位置X
execute store result score @s TargetPosX run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].TargetPos.X 100

### 0なら規定値設定
execute if score @s TargetPosX matches 0 run function behaviour_manager:definition_reader/direction/target_pos/x/default
