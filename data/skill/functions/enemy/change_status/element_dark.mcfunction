#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.ElementDark.Add
execute store result score @s _ run data get storage mob_data: Call.ElementDark.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.ElementDark.Set store result score @s ElementDark run data get storage mob_data: Call.ElementDark.Set
scoreboard players operation @s ElementDark += @s Calc
#Limit
execute if data storage mob_data: Call.ElementDark.Limit store result score @s _ run data get storage mob_data: Call.ElementDark.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.ElementDark.Limit run scoreboard players operation @s ElementDark < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.ElementDark.Limit run scoreboard players operation @s ElementDark > @s _
