#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.ElementLightning.Add
execute store result score @s _ run data get storage mob_data: Call.ElementLightning.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.ElementLightning.Set store result score @s ElementLightning run data get storage mob_data: Call.ElementLightning.Set
scoreboard players operation @s ElementLightning += @s Calc
#Limit
execute if data storage mob_data: Call.ElementLightning.Limit store result score @s _ run data get storage mob_data: Call.ElementLightning.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.ElementLightning.Limit run scoreboard players operation @s ElementLightning < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.ElementLightning.Limit run scoreboard players operation @s ElementLightning > @s _
