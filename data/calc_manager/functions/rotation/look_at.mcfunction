##############################
### ターゲットへ向かせる
##############################

### Usage: execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the direction from [Source] toward [Destination]

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 in overworld positioned as 1-0-0-0-0 run tp @e[distance=0,tag=DataHolder,limit=1] ~ ~ ~ ~ ~

### 向きエンティティに保存
execute at 1-0-0-0-0 rotated as @e[distance=0,tag=DataHolder,limit=1] positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~
