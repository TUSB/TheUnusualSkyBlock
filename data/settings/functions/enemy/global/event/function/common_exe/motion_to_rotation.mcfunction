#Function
execute in area:control_area run data modify entity 0-0-0-0-0 Pos set from entity @s Motion
execute in area:control_area as 0-0-0-0-0 positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation set from entity 0-0-0-0-0 Rotation
