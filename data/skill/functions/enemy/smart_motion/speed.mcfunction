#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.Speed.Add
execute store result score @s _ run data get storage mob_data: Call.Speed.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.Speed.Set store result score @s sm.Speed run data get storage mob_data: Call.Speed.Set
scoreboard players operation @s sm.Speed += @s Calc
#Limit
execute if data storage mob_data: Call.Speed.Limit store result score @s _ run data get storage mob_data: Call.Speed.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.Speed.Limit run scoreboard players operation @s sm.Speed < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.Speed.Limit run scoreboard players operation @s sm.Speed > @s _
