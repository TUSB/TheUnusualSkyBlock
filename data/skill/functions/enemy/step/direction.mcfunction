#Marker召喚
execute in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
#ターゲット
execute if data storage mob_data: Call.Target run function skill:enemy/step/target
#向きを設定
execute if data storage mob_data: Call.DirectionRange run function skill:enemy/step/range/direction
#水平
execute store result score _ Calc run data get entity @s Rotation[0] 100
execute if data storage mob_data: Call.Absolute{Horizontal:1b} run scoreboard players set _ Calc 0
execute store result score _ _ run data get storage mob_data: Call.Direction[0] 100
execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation _ Calc += _ _
#垂直
execute store result score _ Calc run data get entity @s Rotation[1] 100
execute if data storage mob_data: Call.Absolute{Vertical:1b} run scoreboard players set _ Calc 0
execute store result score _ _ run data get storage mob_data: Call.Direction[1] 100
execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run scoreboard players operation _ Calc += _ _
#速度を設定
execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1
execute if data storage mob_data: Call.SpeedRange run function skill:enemy/step/range/speed
execute store result score _ _ run data get storage mob_data: Call.Speed 100
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity 0-0-0-0-0 Pos[0] double 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity 0-0-0-0-0 Pos[1] double 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity 0-0-0-0-0 Pos[2] double 0.0001 run scoreboard players operation _ Calc *= _ _