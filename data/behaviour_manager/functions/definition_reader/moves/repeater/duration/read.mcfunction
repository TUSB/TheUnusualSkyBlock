##############################
### インターポレーター繰り返し時間設定
##############################

### 繰り返し時間(cs)
execute store result score @s RepeaterDuration run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Repeater.Duration 100

### 0なら規定値設定
execute if score @s RepeaterDuration matches 0 run function behaviour_manager:definition_reader/moves/repeater/duration/default
