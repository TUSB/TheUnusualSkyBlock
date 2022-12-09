#Function
scoreboard players operation * ParentID -= @s OhMyDatID
execute as @e[scores={ParentID=0},tag=!NonTarget,tag=!Carried] run effect give @s slow_falling 15 2 true
execute as @e[scores={ParentID=0},tag=!NonTarget] run tag @s add Carried
scoreboard players operation * ParentID += @s OhMyDatID
