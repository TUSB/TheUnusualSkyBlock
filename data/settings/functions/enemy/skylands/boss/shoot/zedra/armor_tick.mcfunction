#Function
execute if entity @s[tag=Rotating] run schedule function settings:enemy/global/event/function/rotate_armor/schedule1 1t replace
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=ZedraAI] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=ZedraAI,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraAI] run scoreboard players operation @s OhMyDatID += _ _
execute at @e[tag=NowTarget] run tp @s ~ ~ ~
tag @e[tag=NowTarget] remove NowTarget
