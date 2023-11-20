#Function
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=SonicABody] unless entity @s[scores={ParentID=1..}] run scoreboard players operation @s ParentID = _ _
data modify storage mob_data: Tags append value Parent
