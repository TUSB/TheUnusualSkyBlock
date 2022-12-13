#Function
execute store result score _ Random run function calc:random
scoreboard players operation _ Random %= _ Calc
execute store result score _ _ run data get storage mob_data: Call.MinSpeed 10000
execute store result storage mob_data: Call.Radius double 0.0001 run scoreboard players operation _ Random += _ _