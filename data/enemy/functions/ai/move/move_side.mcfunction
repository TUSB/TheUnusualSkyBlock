execute positioned ^200 ^ ^ store success score _ Calc if entity @e[tag=Target,distance=..200]
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Side 100
execute if score _ Calc matches 1 facing ^1 ^ ^ in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/move_side_loop
execute unless score _ Calc matches 1 facing ^-1 ^ ^ in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/move_side_loop
