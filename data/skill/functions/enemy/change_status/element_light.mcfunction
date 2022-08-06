#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.ElementLight.Add
execute store result score @s _ run data get storage mob_data: Call.ElementLight.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.ElementLight.Set store result score @s ElementLight run data get storage mob_data: Call.ElementLight.Set
scoreboard players operation @s ElementLight += @s Calc
#Limit
execute if data storage mob_data: Call.ElementLight.Limit store result score @s _ run data get storage mob_data: Call.ElementLight.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.ElementLight.Limit run scoreboard players operation @s ElementLight < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.ElementLight.Limit run scoreboard players operation @s ElementLight > @s _
