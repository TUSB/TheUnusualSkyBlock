##############################
### インターポレーター繰り返し回数設定
##############################

### 繰り返し回数
execute store result score @s RepeaterCount run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMoves[0].Repeater.RepeatCount 1

### 0なら規定値設定
execute if score @s RepeaterCount matches 0 run function behaviour_manager:definition_reader/moves/repeater/count/default
