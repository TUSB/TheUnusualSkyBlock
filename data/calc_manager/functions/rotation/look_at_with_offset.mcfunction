##############################
### ターゲットへ補正付きで向かせる
##############################

### Usage: scoreboard players set [Source] RotateOffset XXX
###        scoreboard players set [Source] TiltOffset YYY
###        execute as [Source] at @s positioned as [Destination] run function this

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 in overworld positioned as 1-0-0-0-0 run tp @e[distance=0,tag=DataHolder,limit=1] ~ ~ ~ ~ ~

### 座標を移動して残りを実行
execute at 1-0-0-0-0 run function calc_manager:rotation/__look_at_with_offset
