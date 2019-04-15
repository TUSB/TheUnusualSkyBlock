##############################
### インターポレーター繰り返し回数設定
##############################

### 繰り返し回数
execute store result score @s ItrpDirRepCount run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.RepeatCount 1

### 0なら規定値設定
execute if score @s ItrpDirRepCount matches 0 run function behaviour_manager:definition_reader/direction/interpolator/repeat_count/default
