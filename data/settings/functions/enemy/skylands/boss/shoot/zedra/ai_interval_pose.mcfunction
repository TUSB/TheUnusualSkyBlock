#Function
## ポーズを切り替える
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..64] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..64,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..64] run scoreboard players operation @s ParentID += _ _
item replace entity @e[distance=..64,tag=ZedraHead,tag=NowTarget] armor.head with stick{CustomModelData:2002}
data modify entity @e[distance=..64,tag=ZedraBody,tag=NowTarget,limit=1] HandItems set value [{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2013}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2012}}]
item replace entity @e[distance=..64,tag=ZedraBody,tag=NowTarget] armor.head with stick{CustomModelData:2007}
data modify entity @s Tags set from storage mob_data: Tags
execute if entity @s[tag=!ChangedPose] run data modify entity @e[distance=..64,tag=ZedraHead,tag=NowTarget,limit=1] Pose set value {Head:[0.01f,0f,0f]}
execute if entity @s[tag=!ChangedPose] run data modify entity @e[distance=..64,tag=ZedraBody,tag=NowTarget,limit=1] Pose set value {RightArm:[350f,350f,20f],LeftArm:[350f,10f,340f],Head:[0.01f,0f,0f]}
tag @e[distance=..64,tag=NowTarget] remove NowTarget
tag @s remove ChangedPose
execute if entity @s[tag=!SkyMotion] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion set value 27
tag @s add SkyMotion
data modify storage mob_data: Tags set from entity @s Tags
