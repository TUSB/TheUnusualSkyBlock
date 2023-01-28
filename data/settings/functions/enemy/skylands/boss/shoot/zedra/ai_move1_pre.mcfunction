#Function
## ポーズを変更
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..0.5,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID += _ _
item replace entity @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] armor.head with stick{CustomModelData:2007}
item replace entity @e[distance=..0.5,tag=ZedraHead,tag=NowTarget] armor.head with stick{CustomModelData:2005}
data modify entity @e[distance=..0.5,tag=ZedraHead,tag=NowTarget,limit=1] Pose set value {Head:[0.01f,0f,0f]}
data modify entity @e[distance=..0.5,tag=ZedraBody,tag=NowTarget,limit=1] Pose set value {RightArm:[40f,0f,25f],LeftArm:[40f,0f,335f],Head:[20f,0f,0f]}
## 移動先を見る（ポーズも合わせる）
function calc:geometry/tp_00000
data modify entity 0-0-0-0-0 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
execute facing entity 0-0-0-0-0 feet run tp @s ~ ~ ~ ~ ~
execute rotated as @s as @e[distance=..0.5,tag=NowTarget] positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score _ _ run data get entity @s Rotation[1] 100
execute if score _ _ matches 0 run scoreboard players set _ _ 1
execute store result entity @e[distance=..0.5,tag=ZedraHead,tag=NowTarget,limit=1] Pose.Head[0] float 0.01 run scoreboard players get _ _
tag @e[tag=NowTarget] remove NowTarget
execute as 0-0-0-0-0 run function calc:geometry/return_marker
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick set value 3
## 音
playsound minecraft:entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 0.5 0.65
playsound minecraft:item.trident.riptide_1 hostile @a[distance=..64] ~ ~ ~ 0.5 0.5
