##############################
### ターゲットへ速度制限付きで向かせる
##############################

### Usage: scoreboard players set [Source] SpinSpeed XXX
###        execute as [Source] at @s positioned as [Destination] run function this

### SpinAmount >= 500 で回転処理
execute if score @s SpinAmount matches 500.. run function calc_manager:rotation/__slerp
