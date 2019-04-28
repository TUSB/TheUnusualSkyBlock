##############################
### ターゲットへ向かせる
##############################

### Usage: execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the direction from [Source] toward [Destination]

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-10 ~ ~ ~ ~ ~
### 向きセット
function calc_manager:rotation/__set_rotation
