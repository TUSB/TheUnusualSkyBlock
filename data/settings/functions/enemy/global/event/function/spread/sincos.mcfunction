#Function
execute in area:control_area positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function calc:geometry/tp_00002
execute store result entity 0-0-0-0-2 Rotation[0] float 1 run data get storage calc: SpreadRotation[0]
execute as 0-0-0-0-2 at @s run tp @s ^ ^ ^1
data modify storage calc: SinCosPos set from entity 0-0-0-0-2 Pos
data modify storage calc: YawSinCos append from storage calc: SinCosPos[0]
data modify storage calc: YawSinCos append from storage calc: SinCosPos[2]
data remove storage calc: SinCosPos

execute in area:control_area positioned 0.0 0.0 0.0 rotated 0.0 0.0 run function calc:geometry/tp_00002
execute store result entity 0-0-0-0-2 Rotation[0] float 1 run data get storage calc: SpreadRotation[1]
execute as 0-0-0-0-2 at @s run tp @s ^ ^ ^1
data modify storage calc: SinCosPos set from entity 0-0-0-0-2 Pos
data modify storage calc: PitchSinCos append from storage calc: SinCosPos[0]
data modify storage calc: PitchSinCos append from storage calc: SinCosPos[2]
data remove storage calc: SinCosPos

execute as 0-0-0-0-2 run function calc:geometry/return_marker
