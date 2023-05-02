scoreboard players operation * OhMyDatID -= @s ParentID
execute store success score @s Calc at @e[tag=Parent,scores={OhMyDatID=0},distance=0.01..,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
scoreboard players operation * OhMyDatID += @s ParentID
