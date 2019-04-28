##############################
### モーションを適用する(回転無視)
##############################

### Usage: scoreboard players set $Input ForwardSpeed XXX
###        scoreboard players set $Input LeftwardSpeed XXX
###        scoreboard players set $Input UpwardSpeed XXX
###        scoreboard players set [Source] RotateAngle XXX
###        scoreboard players set [Source] TiltAngle XXX
###        execute as [Source] run function this
### Returns: set the Motion of [Source] to the Vector that has the specified speed with respect to the specified angle

### スピード代入(x100)
execute store result entity 0-0-0-0-20 Pos[0] double 1 run scoreboard players get $Input LeftwardSpeed
execute store result entity 0-0-0-0-20 Pos[1] double 1 run scoreboard players get $Input UpwardSpeed
execute store result entity 0-0-0-0-20 Pos[2] double 1 run scoreboard players get $Input ForwardSpeed
### 変更前の向きを取得
execute at 0-0-0-0-20 facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
execute store result score $_ TiltAngle run data get entity 0-0-0-0-20 Rotation[1] 100
### 変更基準の向きを取得
execute store result entity 0-0-0-0-20 Rotation[1] float 0.01 run scoreboard players operation $_ TiltAngle += @s TiltAngle
### 鏡像変換
execute at 0-0-0-0-20 positioned 0.0 0.0 0.0 facing entity 0-0-0-0-20 feet positioned ^ ^ ^-1 rotated as 0-0-0-0-20 positioned ^ ^ ^1 facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 as 0-0-0-0-20 run function calc_manager:mirror/change
execute at 0-0-0-0-20 positioned ~0.5 ~0.5 ~0.5 align xyz facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp 0-0-0-0-20 ~ ~ ~ ~ ~
### スピード適用(x0.01)
execute store result entity @s Motion[0] double 0.01 run data get entity 0-0-0-0-20 Pos[0] 1
execute store result entity @s Motion[1] double 0.01 run data get entity 0-0-0-0-20 Pos[1] 1
execute store result entity @s Motion[2] double 0.01 run data get entity 0-0-0-0-20 Pos[2] 1

### エンティティ返却
execute positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-20 ~ ~ ~ ~ ~
