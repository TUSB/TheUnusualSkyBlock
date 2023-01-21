#Function
scoreboard players operation @s _ = _ Calc
scoreboard players operation @s _ -= _ _
scoreboard players set # _ 1
execute if score @s _ matches -36000..-18000 run scoreboard players set # _ 1
execute if score @s _ matches -18000..0 run scoreboard players set # _ 0
execute if score @s _ matches 0..18000 run scoreboard players set # _ 1
execute if score @s _ matches 18000..36000 run scoreboard players set # _ 0
