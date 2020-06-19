execute store result score $Slot Global run data get entity @s SelectedItemSlot

scoreboard players operation $Shift Global = $Slot Global
scoreboard players operation $Shift Global -= $PreviousSlot Global

execute if score $Shift Global matches ..-5 run scoreboard players add $Shift Global 9
execute if score $Shift Global matches 5.. run scoreboard players remove $Shift Global 9

execute unless score @s SneakTime matches 1.. if score $Shift Global matches ..-1 run function casino_manager:bet/down
execute unless score @s SneakTime matches 1.. if score $Shift Global matches 1.. run function casino_manager:bet/up

execute if score @s SneakTime matches 1.. if score $Shift Global matches ..-1 run function casino_manager:bet/down_sneak
execute if score @s SneakTime matches 1.. if score $Shift Global matches 1.. run function casino_manager:bet/up_sneak

title @s times 0 10 0
title @p title [{"text":""},{"score":{"name":"$Bet","objective":"Global"}}]

scoreboard players operation $PreviousSlot Global = $Slot Global
