##############################
### リピータ―継続するか読み込み
##############################

### タグリセット
tag @s remove CarryMove

### 繰り返しタグ設定
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Repeater:{Carry:On}}}}}}] run tag @s add CarryMove

### trueでないなら規定値設定
execute unless entity @s[tag=CarryMove] run function behaviour_manager:definition_reader/moves/repeater/continue/default
