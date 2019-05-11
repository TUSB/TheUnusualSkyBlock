##############################
### 左回り速度最小値
##############################

### 左回り速度最小値
execute store result score @s LeftwardSpeedMin at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Leftward.MinSpeed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Leftward.MinSpeed run function behaviour_manager:definition_reader/moves/leftward/speed_min/default
