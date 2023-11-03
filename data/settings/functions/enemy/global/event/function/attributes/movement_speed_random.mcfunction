#Function
execute store result score _ Random run function calc:random
execute store result score _ _ run data get storage mob_data: Call.RangeSpeed
scoreboard players add _ _ 1
scoreboard players operation _ Random %= _ _

execute store result score _ _ run data get storage mob_data: Call.MinSpeed
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.01 run scoreboard players operation _ Random += _ _
