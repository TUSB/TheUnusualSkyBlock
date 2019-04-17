##############################
### インターポレーター繰り返し回数設定
##############################

### 繰り返し回数
execute store result score @s IntrpDirRepCount run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.RepeatCount 1

### 0なら規定値設定
execute if score @s IntrpDirRepCount matches 0 run function behaviour_manager:definition_reader/directions/interpolator/repeat_count/default
