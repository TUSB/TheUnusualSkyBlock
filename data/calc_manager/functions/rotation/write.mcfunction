##############################
### 向きを書き込む
##############################

### Usage: execute as [Source] run function this
### Returns: set the Rotation of [Source] based on [Source] RotateAngle and [Source] TiltAngle

### 向きセット
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s RotateAngle
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s TiltAngle
