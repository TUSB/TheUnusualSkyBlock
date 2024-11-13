#アーマースタンドのY方向Pose補正
data modify storage calc: List set value [0f,0f,0f]
execute store result storage calc: List[0] float 1 run data get entity @s Rotation[1]
data modify entity @s Pose.Head set from storage calc: List
