##############################
### ターゲットへ速度制限付きで向かせる
##############################

### Usage: scoreboard players set [Source] SpinSpeed XXX
###        execute as [Source] at @s positioned as [Destination] run function this
### Returns: set [Source] RotateAngle, [Source] TiltAngle, and the Rotation of [Source]
###          based on the rotation from the former rotation to the direction from [Source] toward [Destination] limited by the speed.

### SpinAmount >= 500 で回転処理
scoreboard players operation @s SpinAmount += @s SpinSpeed
execute if score @s SpinAmount matches 500.. run function calc_manager:rotation/__slerp
