##############################
### モーションを適用する(回転傾き無視)
##############################

### Usage: scoreboard players set $Input ForwardSpeed XXX
###        scoreboard players set $Input LeftwardSpeed XXX
###        scoreboard players set $Input UpwardSpeed XXX
###        scoreboard players set [Source] RotateAngle XXX
###        scoreboard players set [Source] TiltAngle XXX
###        execute as [Source] run function this
### Returns: set the Motion of [Source] to the Vector that has the specified speed with respect to the specified angle

### スピード代入
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run scoreboard players get $Input LeftwardSpeed
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run scoreboard players get $Input UpwardSpeed
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run scoreboard players get $Input ForwardSpeed
### スピード適用
data modify entity @s Motion set from entity 0-0-0-0-20 Pos

### エンティティ返却
execute positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-20 ~ ~ ~ ~ ~
