#> calc:rotate/quaternion/get_angle_vector
## calc: Rotate.Quaternion.AxisVectorに保存

data modify entity @s Rotation set from storage calc: Rotate.Quaternion.Axis
execute rotated as @s in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^1.0 run function calc:geometry/tp_00000
data modify storage calc: Rotate.Quaternion.AxisVector set from entity @s Pos
execute store result score __ sm.X run data get storage calc: Rotate.Quaternion.AxisVector[0] 1000
execute store result score __ sm.Y run data get storage calc: Rotate.Quaternion.AxisVector[1] 1000
execute store result score __ sm.Z run data get storage calc: Rotate.Quaternion.AxisVector[2] 1000
