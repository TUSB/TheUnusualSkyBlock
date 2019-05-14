##############################
### リピーター繰り返し時間設定
##############################

### 繰り返し時間(cs)
execute store result score @s RepeaterDuration at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Repeater.Duration 100

### タグなしなら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Repeater.Duration run function behaviour_manager:definition_reader/moves/repeater/duration/default
