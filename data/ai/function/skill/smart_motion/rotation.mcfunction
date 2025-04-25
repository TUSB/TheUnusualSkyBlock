#Horizontal
execute store result score _ _ run data get storage mob_data: Call.Rotation.Horizontal 100
execute if data storage mob_data: Call.Rotation.Horizontal store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s sm.RotationX += _ _

#Vertical
execute store result score _ _ run data get storage mob_data: Call.Rotation.Vertical 100
execute if data storage mob_data: Call.Rotation.Vertical store result entity @s Rotation[1] float 0.01 run scoreboard players operation @s sm.RotationY += _ _
