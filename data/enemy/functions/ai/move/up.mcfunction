execute store result score _ Calc store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Up 100
scoreboard players set @s _ -1
execute if score _ _ matches ..-1 run scoreboard players operation _ _ *= @s _
execute if score _ Calc matches 0.. facing ^ ^1 ^ in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
execute if score _ Calc matches ..-1 facing ^ ^-1 ^ in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s run function enemy:ai/move/loop
data modify storage mob_data: Move.Up set from entity 0-0-0-0-0 Pos
