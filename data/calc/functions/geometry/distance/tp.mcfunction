##############################
### 距離
##############################

### Usage: execute as [Source] at [Destination] run function this
### Returns: set _ Ret to the magnitude of the distance between [Source] and [Destination].

### 距離をY軸に押し付ける
execute at @s positioned ^ ^ ^1 positioned ~ ~1 ~ facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s positioned ^ ^-2048 ^ facing entity 0-0-0-0-1 feet positioned ^ ^ ^2048 rotated as @s positioned ^1024 ^ ^ facing entity @s feet positioned ^ ^ ^-1024 rotated as @s facing ^-2048 ^ ^ run tp @s ~ ~ ~
### Y軸の座標差を取る(cm)
execute store result score _ Ret run data get entity @s Pos[1] 100
execute store result score @s Ret run data get entity 0-0-0-0-1 Pos[1] 100
scoreboard players operation _ Ret -= @s Ret
### 返却
function calc:geometry/return_marker
execute as 0-0-0-0-1 run function calc:geometry/return_marker
