#Function
## 向き補正
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..0.5,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID += _ _
tp @s ^ ^ ^0.5
execute at @s run tp @e[distance=..3,tag=NowTarget,tag=ZedraHead] ~ ~ ~ ~ ~
execute at @s run tp @e[distance=..3,tag=NowTarget,tag=ZedraBody] ~ ~ ~ ~30 ~
tag @e[distance=..0.5,tag=NowTarget] remove NowTarget
