##############################
### リピータ―繰り返し回数設定
##############################

### 繰り返し回数
execute unless score @s RepeaterCount matches 1.. store result score @s RepeaterCount at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Repeater.RepeatCount 1

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Repeater.RepeatCount run function behaviour_manager:definition_reader/moves/repeater/count/default
