##############################
### 魔力読み込み
##############################

### 魔力読み込み
execute store result score @s HP at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.StatusSettings.MP 1

### 指定がない場合は規定値を読み込み
execute at 1-0-0-0-0 unless data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.StatusSettings.MP run function status_manager:definition_reader/mp/default
