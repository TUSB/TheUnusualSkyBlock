##############################
### 前進速度最小値
##############################

### 前進速度最小値
execute store result score @s ForwardSpeedMin run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Forward.MinSpeed 10000

### 0なら規定値設定
execute unless data entity @s Passengers[0].Item.tag.DefineMove.Forward.MinSpeed run function behaviour_manager:definition_reader/moves/forward/speed_min/default
