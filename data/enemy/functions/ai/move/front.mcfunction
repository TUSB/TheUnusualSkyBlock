execute store success score _ Calc facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s positioned ^ ^ ^-0.004 if entity @s[distance=..0.005]
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Move.Front 100
execute if score _ _ matches ..-1 run scoreboard players add _ Calc 1
scoreboard players set @s _ -1
execute if score _ _ matches ..-1 run scoreboard players operation _ _ *= @s _
execute if score _ Calc matches 1 in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
execute unless score _ Calc matches 1 facing ^ ^ ^-1 in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s run function enemy:ai/move/loop
data modify storage mob_data: Move.Front set from entity 0-0-0-0-0 Pos
