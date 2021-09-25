#Marker召喚
execute positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
#向きを設定
execute if data storage mob_data: Call.DirectionRange run function skill:enemy/step/range
execute store result score _ Calc run data get entity @s Rotation[0] 100
execute store result score _ _ run data get storage mob_data: Call.Direction[0] 100
execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation _ Calc += _ _
data modify entity 0-0-0-0-0 Rotation[1] set from storage mob_data: Call.Direction[1]
#速度を設定
execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1
execute store result score _ _ run data get storage mob_data: Call.Speed 100
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity 0-0-0-0-0 Rotation[0] float 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity 0-0-0-0-0 Rotation[1] float 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity 0-0-0-0-0 Rotation[2] float 0.0001 run scoreboard players operation _ Calc *= _ _
#Motionに適用
data modify entity @s Motion set from entity 0-0-0-0-0 Pos
