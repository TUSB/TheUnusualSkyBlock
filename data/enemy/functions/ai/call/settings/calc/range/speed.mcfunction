### Speedに0~SpeedRangeを足す
# 水平
execute store result score _ Calc run function calc:random
execute store result score _ _ run data get storage mob_data: Settings.SpeedRange 100
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score _ _ run data get storage mob_data: Settings.Speed 100
execute store result storage mob_data: Settings.Speed double 0.01 run scoreboard players operation _ _ += _ Calc
