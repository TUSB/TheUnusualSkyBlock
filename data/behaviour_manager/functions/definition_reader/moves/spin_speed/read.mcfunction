##############################
### ターゲットへの回転可能速度
##############################

### 回転可能速度 (cdeg/tick)
execute store result score @s SpinSpeed at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.SpinSpeed 100

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.SpinSpeed run function behaviour_manager:definition_reader/moves/spin_speed/default
