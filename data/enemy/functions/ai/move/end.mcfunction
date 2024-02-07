#X
execute store result score _ Calc run data get storage mob_data: Move.Front[0] 100
execute store result score _ _ run data get storage mob_data: Move.Side[0] 100
scoreboard players operation _ Calc += _ _
execute store result score _ _ run data get storage mob_data: Move.Up[0] 100
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation _ Calc += _ _
#Y
execute store result score _ Calc run data get storage mob_data: Move.Front[1] 100
execute store result score _ _ run data get storage mob_data: Move.Side[1] 100
scoreboard players operation _ Calc += _ _
execute store result score _ _ run data get storage mob_data: Move.Up[1] 100
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation _ Calc += _ _
#Z
execute store result score _ Calc run data get storage mob_data: Move.Front[2] 100
execute store result score _ _ run data get storage mob_data: Move.Side[2] 100
scoreboard players operation _ Calc += _ _
execute store result score _ _ run data get storage mob_data: Move.Up[2] 100
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation _ Calc += _ _
