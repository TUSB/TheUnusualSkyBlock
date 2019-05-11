##############################
### 左回り速度最大値
##############################

### 左回り速度最大値
execute store result score @s LeftwardSpeedMax at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Leftward.MaxSpeed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Leftward.MaxSpeed run function behaviour_manager:definition_reader/moves/leftward/speed_max/default
