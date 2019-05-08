##############################
### 前進速度
##############################

### 前進速度
execute store result score @s ForwardSpeed run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Forward.Speed 10000

### 0なら規定値設定
execute if score @s ForwardSpeed matches 0 run function behaviour_manager:definition_reader/moves/forward/speed/default
