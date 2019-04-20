##############################
### ターゲットへ向かせる
##############################

### Usage: execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the direction from [Source] toward [Destination]

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
### スコアセット
function calc_manager:rotation/read
