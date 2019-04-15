##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set $Result Distance to the magnitude of the distance between [Source] and [Destination].

### 距離をY軸に押し付ける
execute in overworld facing entity @s feet run tp 0-0-2-0-0 ~ ~ ~ ~ ~
execute as 0-0-2-0-0 at @s positioned ^ ^ ^1 positioned ~ ~1 ~ facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute in overworld rotated as 0-0-2-0-0 positioned ^ ^-2048 ^ facing entity @s feet positioned ^ ^ ^2048 rotated as 0-0-2-0-0 positioned ^1024 ^ ^ facing entity 0-0-2-0-0 feet positioned ^ ^ ^-1024 rotated as 0-0-2-0-0 facing ^-2048 ^ ^ run tp 0-0-2-0-0 ~ ~ ~

### Y軸の座標差を取る
execute store result score $Result TargetDistance run data get entity 0-0-2-0-0 Pos[1] 1000
execute store result score $Y Local run data get entity @s Pos[1] 1000
scoreboard players operation $Result TargetDistance -= $Y Local

### エンティティ返却
function uuid_entity_manager:00200/return

### ログ
# tellraw @a ["calc_manager:get/distance : ",{"score":{"name":"$Distance","objective":"Global"}}]
