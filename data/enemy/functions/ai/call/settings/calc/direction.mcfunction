#向きを設定
#Marker召喚
execute in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
#向きを設定
execute if data storage mob_data: Settings.DirectionRange run function enemy:ai/call/settings/calc/range/direction
#水平
execute store result score _ Calc run data get entity 0-0-0-0-1 Rotation[0] 100
execute if data storage mob_data: Settings.Absolute{Horizontal:1b} run scoreboard players set _ Calc 0
execute store result score _ _ run data get storage mob_data: Settings.Direction[0] 100
execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players operation _ Calc += _ _
#垂直
execute store result score _ Calc run data get entity 0-0-0-0-1 Rotation[1] 100
execute if data storage mob_data: Settings.Absolute{Vertical:1b} run scoreboard players set _ Calc 0
execute store result score _ _ run data get storage mob_data: Settings.Direction[1] 100
execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run scoreboard players operation _ Calc += _ _
