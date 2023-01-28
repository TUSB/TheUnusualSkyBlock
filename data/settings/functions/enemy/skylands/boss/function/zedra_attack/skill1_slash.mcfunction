#Function
## 斬撃ポーズ
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..0.5,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s ParentID += _ _
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function oh_my_dat:please
execute as @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
item replace entity @e[distance=..0.5,tag=ZedraBody,tag=NowTarget] armor.head with stick{CustomModelData:2007}
## ダメージ軽減終了命令
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=ZedraFirst] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=ZedraFirst,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraFirst] run scoreboard players operation @s OhMyDatID += _ _
execute as @e[tag=ZedraFirst,tag=NowTarget] run tag @s remove Protection
## RageAttackの引き継ぎ
execute as @e[tag=ZedraFirst,tag=NowTarget] run function oh_my_dat:please
data modify storage mob_data: Call.Additional set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraAttack1] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=ZedraAttack1,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraAttack1] run scoreboard players operation @s ParentID += _ _
execute as @e[tag=ZedraAttack1,tag=NowTarget] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack set from storage mob_data: Call.Additional
## リセット
tag @e[tag=NowTarget] remove NowTarget
function oh_my_dat:please
