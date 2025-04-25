#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.Vertical.Add 100
execute store result score @s _ run data get storage mob_data: Call.Vertical.Range 100
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Rotate[1] 100
execute if data storage mob_data: Call.Vertical.Set store result score _ Calc run data get storage mob_data: Call.Vertical.Set 100
scoreboard players operation _ Calc += @s Calc
#Limit
execute if data storage mob_data: Call.Vertical.Limit store result score @s _ run data get storage mob_data: Call.Vertical.Limit 100
execute if score @s Calc matches 1.. if data storage mob_data: Call.Vertical.Limit run scoreboard players operation _ Calc < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.Vertical.Limit run scoreboard players operation _ Calc > @s _

execute store result storage mob_data: AI.Turn[0].Rotate[1] float 0.01 run scoreboard players get _ Calc
