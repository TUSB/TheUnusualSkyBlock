##############################
### 上昇速度
##############################

### 上昇速度
execute store result score @s UpwardSpeed at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Upward.Speed 10000

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Upward.Speed run function behaviour_manager:definition_reader/moves/upward/speed/default
