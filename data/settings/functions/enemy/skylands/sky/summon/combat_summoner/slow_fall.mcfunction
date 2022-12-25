#Function
scoreboard players operation * ParentID -= @s OhMyDatID
effect give @e[scores={ParentID=0},tag=!Carried] slow_falling 15 2 true
tag @e[scores={ParentID=0}] add Carried
scoreboard players operation * ParentID += @s OhMyDatID
