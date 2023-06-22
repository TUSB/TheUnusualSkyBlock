#Function
execute unless data entity @s Passengers run tag @s add Vehicle
execute if data entity @s Passengers on passengers run function settings:enemy/global/event/function/recursively_ride_owner/loop
