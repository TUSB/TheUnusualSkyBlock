execute store success score _ Calc facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s positioned ^ ^ ^-0.004 if entity @s[distance=..0.005]
execute if score _ Calc matches 1 store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Front 100
execute if score _ Calc matches 1 in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/loop
execute unless score _ Calc matches 1 store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Front 80
execute unless score _ Calc matches 1 facing ^ ^ ^-1 in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/loop
data modify storage mob_data: Move.Front set from entity 0-0-0-0-0 Pos
