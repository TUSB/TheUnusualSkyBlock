##############################
### ターゲット位置タイプ読み込み
##############################

### タグリセット
tag @s remove Destination.Update
tag @s remove Destination.Memorize
tag @s remove Destination.Direction

### 記憶
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Destination:Memorize}}}}}] run tag @s add Destination.Memorize
### 向きだけ記憶
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Destination:Direction}}}}}] run tag @s add Destination.Direction

### それ以外は規定値
execute if entity @s[tag=!Destination.Memorize,tag=!Destination.Direction] run function behaviour_manager:definition_reader/target/destination/default
