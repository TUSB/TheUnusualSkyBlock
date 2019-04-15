##############################
### インターポレーター終了時間設定
##############################

### 終了時間(cs)
execute store result score @s ItrpDirEnd run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.End 100

### 0なら規定値設定
execute if score @s ItrpDirEnd matches 0 run function behaviour_manager:definition_reader/direction/interpolator/end/default
