##############################
### インターポレーター開始(終了)時間ランダム遅延時間設定
##############################

### 遅延時間(cs)
execute store result score @s ItrpDirRanDelay run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.RandomDelay 100

### 0なら規定値設定
execute if score @s ItrpDirRanDelay matches 0 run function behaviour_manager:definition_reader/direction/interpolator/random_delay/default
