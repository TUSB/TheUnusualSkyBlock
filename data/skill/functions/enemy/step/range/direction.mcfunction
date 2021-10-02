### Directionに0~DirectionRangeを足す
# 水平
execute store result score _ Calc run function calc:random
execute store result score _ _ run data get storage mob_data: Call.DirectionRange[0] 100
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score _ _ run data get storage mob_data: Call.Direction[0] 100
execute store result storage mob_data: Call.Direction[0] float 0.01 run scoreboard players operation _ _ += _ Calc
# 垂直
execute store result score _ Calc run function calc:random
execute store result score _ _ run data get storage mob_data: Call.DirectionRange[1] 100
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score _ _ run data get storage mob_data: Call.Direction[1] 100
execute store result storage mob_data: Call.Direction[1] float 0.01 run scoreboard players operation _ _ += _ Calc
