#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.Side.Add 100
execute store result score @s _ run data get storage mob_data: Call.Side.Range 100
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Move.Side 100
execute if data storage mob_data: Call.Side.Set store result score _ Calc run data get storage mob_data: Call.Side.Set 100
scoreboard players operation _ Calc += @s Calc
#Limit
execute if data storage mob_data: Call.Side.Limit store result score @s _ run data get storage mob_data: Call.Side.Limit 100
execute if score @s Calc matches 1.. if data storage mob_data: Call.Side.Limit run scoreboard players operation _ Calc < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.Side.Limit run scoreboard players operation _ Calc > @s _

execute store result storage mob_data: AI.Turn[0].Move.Side double 0.01 run scoreboard players get _ Calc
