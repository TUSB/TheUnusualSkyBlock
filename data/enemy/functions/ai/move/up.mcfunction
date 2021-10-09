execute store result score _ _ store result storage mob_data: Loop int 1 run data get storage mob_data: AI.Turn[0].Move.Up 100
execute if score _ _ matches 0.. facing ^ ^1 ^ in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/loop
execute if score _ _ matches ..-1 facing ^ ^-1 ^ in area:control_area positioned 0.0 0.0 0.0 run function enemy:ai/move/loop
data modify storage mob_data: Move.Up set from entity 0-0-0-0-0 Pos
