#Function
scoreboard players set _ _ 0
execute if block ~ ~ ~ #main:no_collision run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_down
execute unless block ~ ~ ~ #main:no_collision run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_up
