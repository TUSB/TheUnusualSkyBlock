#Set, Add
execute store result score @s Calc run data get storage mob_data: Call.ElementFire.Add
execute store result score @s _ run data get storage mob_data: Call.ElementFire.Range
execute unless score @s _ matches 0 run function skill:enemy/change_move/range
execute if data storage mob_data: Call.ElementFire.Set store result score @s ElementFire run data get storage mob_data: Call.ElementFire.Set
scoreboard players operation @s ElementFire += @s Calc
#Limit
execute if data storage mob_data: Call.ElementFire.Limit store result score @s _ run data get storage mob_data: Call.ElementFire.Limit
execute if score @s Calc matches 1.. if data storage mob_data: Call.ElementFire.Limit run scoreboard players operation @s ElementFire < @s _
execute if score @s Calc matches ..-1 if data storage mob_data: Call.ElementFire.Limit run scoreboard players operation @s ElementFire > @s _

execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/element_text