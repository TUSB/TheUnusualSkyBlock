##############################
### 追跡範囲読み込み
##############################

### 1cm単位で読み込み
execute store result score @s FollowRange at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.TargetSettings.FollowRange 100

### 指定がない場合は規定値を読み込み
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.TargetSettings.FollowRange run function behaviour_manager:definition_reader/target/follow_range/default
