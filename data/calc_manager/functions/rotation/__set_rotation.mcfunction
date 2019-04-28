##############################
### 向きを適用する
##############################

### スコアセット
execute store result score @s RotateAngle run data get entity 0-0-0-0-10 Rotation[0] 100
execute store result score @s TiltAngle run data get entity 0-0-0-0-10 Rotation[1] 100
### 向きセット
execute at @s rotated as 0-0-0-0-10 run tp @s ~ ~ ~ ~ ~
