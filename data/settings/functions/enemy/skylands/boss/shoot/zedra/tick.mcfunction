#Function
## アマスタのもとにテレポート
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=ZedraAI] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=ZedraAI,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[tag=ZedraAI] run scoreboard players operation @s ParentID += _ _
execute at @e[tag=NowTarget] run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1] eyes
## アマスタがいなければ召喚
execute unless entity @e[tag=NowTarget] run function settings:enemy/skylands/boss/shoot/zedra/tick_respawn1
## 燃えている場合、鎮火
execute unless entity @s[nbt={Fire:-20s}] run data modify entity @s Fire set value -20s
## リセット
tag @e[tag=NowTarget] remove NowTarget
## RageDefenseとRageAttackの低下
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack
