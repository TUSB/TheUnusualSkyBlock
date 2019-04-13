##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set $Distance Global to the magnitude of the distance between [Source] and [Destination].

### 距離をY軸に押し付ける
execute in overworld facing entity @s feet run tp 0-0-0-0-30 ~ ~ ~ ~ ~
execute as 0-0-0-0-30 at @s positioned ^ ^ ^1 positioned ~ ~1 ~ facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute in overworld rotated as 0-0-0-0-30 positioned ^ ^-2048 ^ facing entity @s feet positioned ^ ^ ^2048 rotated as 0-0-0-0-30 positioned ^1024 ^ ^ facing entity 0-0-0-0-30 feet positioned ^ ^ ^-1024 rotated as 0-0-0-0-30 facing ^-2048 ^ ^ run tp 0-0-0-0-30 ~ ~ ~

### Y軸の座標差を取る
execute store result score $Distance Global run data get entity 0-0-0-0-30 Pos[1] 1000
execute store result score $Y Local run data get entity @s Pos[1] 1000
scoreboard players operation $Distance Global -= $Y Local
scoreboard players reset * Local

### エンティティ返却
execute as 0-0-0-0-30 at @s run tp @s 0.0 3.0 0.0 ~ ~

### ログ
tellraw @a ["calc_manager:get/distance : ",{"score":{"name":"$Distance","objective":"Global"}}]
