#Function
## ポーズ変更
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..3,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID += _ _
execute as @e[distance=..3,tag=ZedraBody,tag=NowTarget] run function oh_my_dat:please
execute as @e[distance=..3,tag=ZedraBody,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
execute as @e[distance=..3,tag=ZedraBody,tag=NowTarget] run tag @s add Rotating
item replace entity @e[distance=..3,tag=ZedraBody,tag=NowTarget] armor.head with stick{CustomModelData:2008}
## 滞空モーション実行
data modify storage mob_data: Tags append value SkyMotion
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion set value 27
## ダメージ軽減命令
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=ZedraFirst] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=ZedraFirst,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraFirst] run scoreboard players operation @s OhMyDatID += _ _
execute as @e[tag=ZedraFirst,tag=NowTarget] run tag @s add Protection
tag @e[tag=NowTarget] remove NowTarget
## 音
playsound minecraft:item.trident.return hostile @a[distance=..32] ~ ~ ~ 0.5 0.5
playsound minecraft:item.axe.scrape hostile @a[distance=..32] ~ ~ ~ 1 0.6
playsound minecraft:item.axe.scrape hostile @a[distance=..32] ~ ~ ~ 1 0.9
