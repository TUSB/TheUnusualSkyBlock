#Function
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=BlackGrudge_C,distance=..8] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=BlackGrudge_C,scores={OhMyDatID=0},distance=..8] run tag @s add NowTarget
execute as @e[tag=BlackGrudge_C,distance=..8] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowTarget,distance=..8] run data modify storage mob_data: Tags append value Garbage
execute if entity @e[tag=NowTarget,distance=..8] positioned as @e[tag=NowTarget,distance=..8] rotated ~174 ~ positioned ^ ^ ^3 facing entity @e[tag=NowTarget,distance=..8] feet run tp @s ^ ^ ^ ~ 0
execute as @e[tag=NowTarget,distance=..8] run tag @s remove NowTarget
