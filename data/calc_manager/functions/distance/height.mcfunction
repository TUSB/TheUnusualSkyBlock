##############################
### 高度差
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set $Result Distance to the height difference between [Source] and [Destination].

### Destinationの位置を取得
execute in overworld run tp 0-0-2-0-0 ~ ~ ~ ~ ~

### Y軸の座標差を取る(cm)
execute store result score $Result Distance run data get entity 0-0-2-0-0 Pos[1] 100
execute store result score $Y Local run data get entity @s Pos[1] 100
scoreboard players operation $Result Distance -= $Y Local

### エンティティ返却
function uuid_entity_manager:00200/return
