#Function
# アマスタと心中
    execute store result score _ _ run scoreboard players get @s OhMyDatID
    execute as @e[tag=SonicAAI] run scoreboard players operation @s ParentID -= _ _
    execute as @e[tag=SonicAAI,scores={ParentID=0}] run tag @s add Garbage
    execute as @e[tag=SonicAAI] run scoreboard players operation @s ParentID += _ _
# 管理マーカーに伝達
    execute store result score _ _ run scoreboard players get @s ParentID
    execute as @e[tag=SonicAMarker] run scoreboard players operation @s OhMyDatID -= _ _
    execute as @e[tag=SonicAMarker,scores={OhMyDatID=0},tag=!Garbage] run tag @s add FirstKill
    execute as @e[tag=SonicAMarker] run scoreboard players operation @s OhMyDatID += _ _
