##############################
### ターゲットへ補正付きで向かせる
##############################

### Usage: scoreboard players set [Source] RotateOffset XXX
###        scoreboard players set [Source] TiltOffset YYY
###        execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the direction from [Source] toward [Destination], modified with the offsets.

### 向き読み込み
execute at 1-0-0-0-0 store result score $_ RotateAngle run data get entity @e[distance=0,tag=DataHolder,limit=1] Rotation[0] 100
execute at 1-0-0-0-0 store result score $_ TiltAngle run data get entity @e[distance=0,tag=DataHolder,limit=1] Rotation[1] 100

### 向きセット
execute at 1-0-0-0-0 store result entity @e[distance=0,tag=DataHolder,limit=1] Rotation[0] float 0.01 run scoreboard players operation $_ RotateAngle += @s RotateOffset
execute at 1-0-0-0-0 store result entity @e[distance=0,tag=DataHolder,limit=1] Rotation[1] float 0.01 run scoreboard players operation $_ TiltAngle += @s TiltOffset
