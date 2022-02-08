#CountRange指定時はCountも指定すること
execute store result score _ Calc run function calc:random
execute store result score _ _ run data get storage mob_data: Call.CountRange
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score _ _ run data get storage mob_data: Call.Count
execute store result storage mob_data: Call.Count int 1 run scoreboard players operation _ Calc += _ _
