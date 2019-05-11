##############################
### ターゲット位置からの垂直上方向補正
##############################

### 垂直上方向補正(cm)
execute store result score @s TargetUpward at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.TargetOffset.Upward 100

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.TargetOffset.Upward run function behaviour_manager:definition_reader/moves/target_offset/upward/default
