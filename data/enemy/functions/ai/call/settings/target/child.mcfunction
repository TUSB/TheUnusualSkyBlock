scoreboard players operation * ParentID -= @s OhMyDatID
execute store success score @s Calc at @e[scores={ParentID=0},distance=0.01..,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
scoreboard players operation * ParentID += @s OhMyDatID
