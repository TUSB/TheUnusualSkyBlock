##############################
### 前進速度最小値
##############################

### 前進速度最小値
execute store result score @s ForwardSpeedMin at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Forward.MinSpeed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Forward.MinSpeed run function behaviour_manager:definition_reader/moves/forward/speed_min/default
