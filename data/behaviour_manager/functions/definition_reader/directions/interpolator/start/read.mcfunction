##############################
### インターポレーター開始時間設定
##############################

### 開始時間(cs)
execute store result score @s IntrpDirStart run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.Start 100

### 0なら規定値設定
execute if score @s IntrpDirStart matches 0 run function behaviour_manager:definition_reader/directions/interpolator/start/default
