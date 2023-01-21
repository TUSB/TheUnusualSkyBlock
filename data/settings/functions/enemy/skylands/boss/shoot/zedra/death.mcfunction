#Function
## アマスタと心中
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraAI] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=ZedraAI,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraAI] run scoreboard players operation @s ParentID += _ _
execute as @e[tag=NowTarget] run tag @s add Garbage
tag @e[tag=NowTarget] remove NowTarget
## 管理マーカーに伝達
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=ZedraMarker] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=ZedraMarker,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraMarker] run scoreboard players operation @s OhMyDatID += _ _
execute as @e[tag=NowTarget,tag=!Garbage] run tag @s add FirstKill
tag @e[tag=NowTarget] remove NowTarget
