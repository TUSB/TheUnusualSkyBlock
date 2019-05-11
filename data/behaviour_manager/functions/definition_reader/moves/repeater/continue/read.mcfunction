##############################
### リピータ―継続するか読み込み
##############################

### 繰り返しタグ設定
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Repeater:{Chain:Next}}}}}}] run tag @s add Repeater.Continue

### trueでないなら規定値設定
execute unless entity @s[tag=Repeater.Continue] run function behaviour_manager:definition_reader/moves/repeater/continue/default
