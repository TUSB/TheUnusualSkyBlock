#速度を設定
execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1
execute if data storage mob_data: Settings.SpeedRange run function enemy:ai/call/settings/calc/range/speed
execute store result score _ _ run data get storage mob_data: Settings.Speed 100
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity 0-0-0-0-0 Pos[0] double 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity 0-0-0-0-0 Pos[1] double 0.0001 run scoreboard players operation _ Calc *= _ _
execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity 0-0-0-0-0 Pos[2] double 0.0001 run scoreboard players operation _ Calc *= _ _
