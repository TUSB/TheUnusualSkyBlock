
#Horizontal
execute store result score _ _ run data get storage mob_data: Call.Horizontal 100
execute store result score _ Calc run data get entity @s Rotation[0] 100
scoreboard players operation _ Calc += _ _
execute if data storage mob_data: Call.horizontal store result entity @s Rotation[0] float 0.01 run scoreboard players get _ Calc

#Vertical
execute store result score _ _ run data get storage mob_data: Call.Vertical 100
execute store result score _ Calc run data get entity @s Rotation[1] 100
scoreboard players operation _ Calc += _ _
execute if data storage mob_data: Call.Vertical store result entity @s Rotation[1] float 0.01 run scoreboard players get _ Calc
