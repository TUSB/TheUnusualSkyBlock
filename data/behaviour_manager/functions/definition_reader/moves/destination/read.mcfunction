##############################
### ターゲット位置タイプ読み込み
##############################

### 記憶
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Destination:Memorize}}}}}] run tag @s add Destination.Memorize
### 向きだけ記憶
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Destination:Direction}}}}}] run tag @s add Destination.Direction

### それ以外は規定値
execute if entity @s[tag=!Destination.Memorize,tag=!Destination.Direction] run function behaviour_manager:definition_reader/moves/destination/default
