##############################
### ターゲットへ補正付きで向かせる
##############################

### Usage: scoreboard players set [Source] RotateOffset XXX
###        scoreboard players set [Source] TiltOffset YYY
###        execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the direction from [Source] toward [Destination], modified with the offsets.

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
### スコアセット
function calc_manager:rotation/read
### 補正計算
scoreboard players operation @s RotateAngle += @s RotateOffset
scoreboard players operation @s TiltAngle += @s TiltOffset
### 向きセット
function calc_manager:rotation/write
