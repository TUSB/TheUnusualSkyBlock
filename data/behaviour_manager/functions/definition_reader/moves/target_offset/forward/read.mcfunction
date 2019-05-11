##############################
### ターゲット位置からの水平前方向補正
##############################

### 水平前方向補正(cm)
execute store result score @s TargetForward at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.TargetOffset.Forward 100

### 0なら規定値設定
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.TargetOffset.Forward run function behaviour_manager:definition_reader/moves/target_offset/forward/default
