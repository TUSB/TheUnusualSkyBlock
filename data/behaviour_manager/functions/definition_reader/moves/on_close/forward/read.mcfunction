##############################
### 近い時補正値設定
##############################

### 近い時補正
execute store result score @s OnCloseForwardBy at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.OnClose.ForwardBy 1

### タグなしなら規定値
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.OnClose.ForwardBy run function behaviour_manager:definition_reader/moves/on_close/forward/default
