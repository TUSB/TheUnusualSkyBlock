#Function
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=BlackGrudge_C] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=BlackGrudge_C,scores={OhMyDatID=0},tag=!NonTarget] run tag @s add NowTarget
execute as @e[tag=BlackGrudge_C] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowTarget] run data modify storage mob_data: Tags append value Garbage
execute if entity @e[tag=NowTarget,limit=1] positioned as @e[tag=NowTarget] rotated ~174 ~ positioned ^ ^ ^3 facing entity @e[tag=NowTarget] feet run tp @s ^ ^ ^ ~ 0
execute as @e[tag=NowTarget] run tag @s remove NowTarget
