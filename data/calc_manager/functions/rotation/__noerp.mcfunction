##############################
### スコアと向きを合わせるだけ
##############################

### アマスタをスコアで保存された向きにする
execute store result entity 0-0-0-0-10 Rotation[0] float 0.01 run scoreboard players get @s RotateAngle
execute store result entity 0-0-0-0-10 Rotation[1] float 0.01 run scoreboard players get @s TiltAngle

### 向きセット
execute at @s rotated as 0-0-0-0-10 run tp @s ~ ~ ~ ~ ~
