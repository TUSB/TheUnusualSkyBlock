#Function
## ポーズ変更
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..0.5,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID += _ _
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function oh_my_dat:please
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
tag @e[distance=..0.5,tag=NowTarget] remove NowTarget
data modify storage mob_data: Tags append value ChangedPose
function oh_my_dat:please
