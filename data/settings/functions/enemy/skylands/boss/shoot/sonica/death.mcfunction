#Function
# 管理マーカーに伝達
    execute store result score _ _ run scoreboard players get @s ParentID
    execute as @e[tag=SonicAMarker] run scoreboard players operation @s OhMyDatID -= _ _
    execute if score @s HP matches ..0 as @e[tag=SonicAMarker,scores={OhMyDatID=0},tag=!Garbage] run tag @s add FirstKill
    execute as @e[tag=SonicAMarker] run scoreboard players operation @s OhMyDatID += _ _
