##############################
### 前進速度最大値
##############################

### 前進速度最大値
execute store result score @s ForwardSpeedMax at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Forward.MaxSpeed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Forward.MaxSpeed run function behaviour_manager:definition_reader/moves/forward/speed_max/default
