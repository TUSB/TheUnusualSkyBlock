##############################
### 上昇速度最大値
##############################

### 上昇速度最大値
execute store result score @s UpwardSpeedMax at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Upward.MaxSpeed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Upward.MaxSpeed run function behaviour_manager:definition_reader/moves/upward/speed_max/default
