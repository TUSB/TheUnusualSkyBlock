##############################
### 体力読み込み
##############################

### カーソル移動
function status_manager:move_cursor/data_id

### 体力読み込み
execute store result score @s HP at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.StatusSettings.HP 1

### 1以上でない場合は規定値を読み込み
execute unless score @s HP matches 1.. run function status_manager:definition_reader/hp/default
