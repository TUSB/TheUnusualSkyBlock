#Function
data modify storage mob_data: Tags append value Garbage
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraFirst] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=ZedraFirst,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraFirst] run scoreboard players operation @s ParentID += _ _
execute as @e[tag=NowTarget] run tag @s add Garbage
tag @e[tag=NowTarget] remove NowTarget
