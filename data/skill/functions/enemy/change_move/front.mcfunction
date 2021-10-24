#Set, Add
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Move.Front 100
execute if data storage mob_data: Call.Front.Set store result score _ Calc run data get storage mob_data: Call.Front.Set 100
execute store result score _ _ run data get storage mob_data: Call.Front.Add 100
scoreboard players operation _ Calc += _ _
#Limit
execute if data storage mob_data: Call.Front.Limit store result score @s _ run data get storage mob_data: Call.Front.Limit 100
execute if score _ _ matches 1.. if data storage mob_data: Call.Front.Limit run scoreboard players operation _ Calc < @s _
execute if score _ _ matches ..-1 if data storage mob_data: Call.Front.Limit run scoreboard players operation _ Calc > @s _

execute store result storage mob_data: AI.Turn[0].Move.Front double 0.01 run scoreboard players get _ Calc
