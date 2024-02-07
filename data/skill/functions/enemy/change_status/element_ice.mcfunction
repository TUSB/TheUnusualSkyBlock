#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.ElementIce.Add
execute store result score @s _ run data get storage mob_data: Call.ElementIce.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.ElementIce.Set store result score @s ElementIce run data get storage mob_data: Call.ElementIce.Set
scoreboard players operation @s ElementIce += @s Calc
#Limit
execute if data storage mob_data: Call.ElementIce.Limit store result score @s _ run data get storage mob_data: Call.ElementIce.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.ElementIce.Limit run scoreboard players operation @s ElementIce < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.ElementIce.Limit run scoreboard players operation @s ElementIce > @s _

execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/element_text