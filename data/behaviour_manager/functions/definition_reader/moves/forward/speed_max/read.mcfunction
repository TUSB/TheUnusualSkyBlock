##############################
### 前進速度最大値
##############################

### 前進速度最大値
execute store result score @s ForwardSpeedMax run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Forward.MaxSpeed 100

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Forward.MaxSpeed run function behaviour_manager:definition_reader/moves/forward/speed_max/default
