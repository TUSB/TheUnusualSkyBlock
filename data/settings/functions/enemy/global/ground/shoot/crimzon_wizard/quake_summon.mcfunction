#Function
scoreboard players set _ _ 0
execute if block ~ ~ ~ #block:no_collision run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_down
execute unless block ~ ~ ~ #block:no_collision run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_up
