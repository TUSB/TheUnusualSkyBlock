##############################
### 前進加速度
##############################

### 前進加速度
execute store result score @s ForwardGravity run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Forward.Acceleration 100

### 0なら規定値設定
execute if score @s ForwardGravity matches 0 run function behaviour_manager:definition_reader/moves/forward/acceleration/default
