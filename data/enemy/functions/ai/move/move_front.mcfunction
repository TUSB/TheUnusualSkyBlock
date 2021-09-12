execute positioned ^ ^ ^200 store success score _ Calc if entity @e[tag=Target,distance=..200]
execute if score _ Calc matches 1 store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Front 100
execute if score _ Calc matches 1 in minecraft:overworld positioned 0.0 0.0 0.0 run function enemy:ai/move/move_front_loop
execute unless score _ Calc matches 1 store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Front 80
execute unless score _ Calc matches 1 facing ^ ^ ^-1 in minecraft:overworld positioned 0.0 0.0 0.0 run function enemy:ai/move/move_front_loop
