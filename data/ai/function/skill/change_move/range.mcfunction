#RangeをAddに足す
execute store result score _ Calc run function calc:random
scoreboard players add @s _ 1
scoreboard players operation _ Calc %= @s _
scoreboard players operation @s Calc += _ Calc
