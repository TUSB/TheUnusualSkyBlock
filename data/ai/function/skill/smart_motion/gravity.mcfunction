#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.Gravity.Add
execute store result score @s _ run data get storage mob_data: Call.Gravity.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.Gravity.Set store result score @s sm.Gravity run data get storage mob_data: Call.Gravity.Set
scoreboard players operation @s sm.Gravity += @s Calc
#Limit
execute if data storage mob_data: Call.Gravity.Limit store result score @s _ run data get storage mob_data: Call.Gravity.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.Gravity.Limit run scoreboard players operation @s sm.Gravity < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.Gravity.Limit run scoreboard players operation @s sm.Gravity > @s _
