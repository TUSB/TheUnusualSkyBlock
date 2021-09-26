#Horizontal
execute store result score _ Calc run data get entity @s Rotation[0] 100
execute store success score @s _ positioned ^-0.004 ^ ^ if entity @s[distance=..0.005] 
execute if score @s _ matches 1 store result entity @s Rotation[0] float 0.01 run scoreboard players operation _ Calc -= _ _
execute if score @s _ matches 0 store result entity @s Rotation[0] float 0.01 run scoreboard players operation _ Calc += _ _
execute store result score _ _ rotated as @s positioned ^-0.004 ^ ^ if entity @s[distance=..0.005]
execute if score @s _ matches 1 if score _ _ matches 0 run data modify entity @s Rotation[0] set from storage mob_data: Rotation[0]
execute if score @s _ matches 0 if score _ _ matches 1 run data modify entity @s Rotation[0] set from storage mob_data: Rotation[0]
