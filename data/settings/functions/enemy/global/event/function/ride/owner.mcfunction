#Function
scoreboard players operation * OhMyDatID -= @s ParentID
tag @e[scores={OhMyDatID=0}] add Owner
scoreboard players operation * OhMyDatID += @s ParentID
ride @e[tag=Owner,limit=1] mount @s
tag @e[tag=Owner] remove Owner
