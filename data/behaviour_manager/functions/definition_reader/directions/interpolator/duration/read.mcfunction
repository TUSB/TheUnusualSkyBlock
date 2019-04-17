##############################
### インターポレーター繰り返し時間設定
##############################

### 繰り返し時間(cs)
execute store result score @s IntrpDirDuration run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.Duration 100

### 0なら規定値設定
execute if score @s IntrpDirDuration matches 0 run function behaviour_manager:definition_reader/directions/interpolator/duration/default
