#Function
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraFirst] unless entity @s[scores={ParentID=1..}] run scoreboard players operation @s ParentID = _ _
