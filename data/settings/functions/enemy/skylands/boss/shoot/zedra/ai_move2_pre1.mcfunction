#Function
## 目的座標までの距離を三等分
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos set value [0d,0d,0d]
scoreboard players set # _ 3
execute store result score _ _ run data get entity @s Pos[0] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos[0] 1000
scoreboard players operation _ Calc -= _ _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[0] double 0.001 run scoreboard players operation _ Calc /= # _
execute store result score _ _ run data get entity @s Pos[1] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos[1] 1000
scoreboard players operation _ Calc -= _ _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[1] double 0.001 run scoreboard players operation _ Calc /= # _
execute store result score _ _ run data get entity @s Pos[2] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos[2] 1000
scoreboard players operation _ Calc -= _ _
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[2] double 0.001 run scoreboard players operation _ Calc /= # _
## ポーズ変更
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..0.5,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID += _ _
item replace entity @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] armor.head with stick{CustomModelData:2008}
item replace entity @e[distance=..0.5,tag=ZedraHead,tag=NowTarget] armor.head with stick{CustomModelData:2002}
data modify entity @e[distance=..0.5,tag=ZedraHead,tag=NowTarget,limit=1] Pose set value {Head:[0.01f,0f,0f]}
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function #oh_my_dat:please
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
tag @e[distance=..3,tag=NowTarget] remove NowTarget
function #oh_my_dat:please
