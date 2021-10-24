#Set, Add
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Move.Up 100
execute if data storage mob_data: Call.Up.Set store result score _ Calc run data get storage mob_data: Call.Up.Set 100
execute store result score _ _ run data get storage mob_data: Call.Up.Add 100
scoreboard players operation _ Calc += _ _
#Limit
execute if data storage mob_data: Call.Up.Limit store result score @s _ run data get storage mob_data: Call.Up.Limit 100
execute if score _ _ matches 1.. if data storage mob_data: Call.Up.Limit run scoreboard players operation _ Calc < @s _
execute if score _ _ matches ..-1 if data storage mob_data: Call.Up.Limit run scoreboard players operation _ Calc > @s _

execute store result storage mob_data: AI.Turn[0].Move.Up double 0.01 run scoreboard players get _ Calc
