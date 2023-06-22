#Function
scoreboard players operation * OhMyDatID -= @s ParentID
tag @e[scores={OhMyDatID=0}] add Owner
scoreboard players operation * OhMyDatID += @s ParentID
execute as @e[tag=Owner,type=!minecraft:marker] run function settings:enemy/global/event/function/recursively_ride_owner/loop
ride @s mount @e[tag=Vehicle,limit=1]
tag @e[tag=Owner] remove Owner
tag @e[tag=Vehicle] remove Vehicle
