execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Side 100
execute positioned ^200 ^ ^ if entity @e[tag=Target,distance=..200] facing ^1 ^ ^ positioned 0.0 0.0 0.0 run function entity:enemy/ai/move/move_side_loop
execute positioned ^-200 ^ ^ if entity @e[tag=Target,distance=..200] facing ^-1 ^ ^ positioned 0.0 0.0 0.0 run function entity:enemy/ai/move/move_side_loop
