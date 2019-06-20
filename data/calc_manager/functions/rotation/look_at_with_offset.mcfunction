##############################
### ターゲットへ補正付きで向かせる
##############################

### Usage: scoreboard players set [Source] RotateOffset XXX
###        scoreboard players set [Source] TiltOffset YYY
###        execute as [Source] at @s positioned as [Destination] run function this

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 in overworld positioned as 1-0-0-0-0 run tp 1-0-0-0-0 ~ ~ ~ ~ ~

### 向き読み込み
execute store result score $_ RotateOffset run data get entity 1-0-0-0-0 Rotation[0] 100
execute store result score $_ TiltOffset run data get entity 1-0-0-0-0 Rotation[1] 100

### 向きセット
execute store result entity 1-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation $_ RotateOffset += @s RotateOffset
execute store result entity 1-0-0-0-0 Rotation[1] float 0.01 run scoreboard players operation $_ TiltOffset += @s TiltOffset
