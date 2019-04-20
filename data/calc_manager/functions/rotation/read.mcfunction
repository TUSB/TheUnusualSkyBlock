##############################
### 向きを読み込む
##############################

### Usage: execute as [Source] run function this
### Returns: set [Source] RotateAngle and [Source] TiltAngle based on the Rotation of [Source]

### スコアセット
execute store result score @s RotateAngle run data get entity @s Rotation[0] 100
execute store result score @s TiltAngle run data get entity @s Rotation[1] 100
