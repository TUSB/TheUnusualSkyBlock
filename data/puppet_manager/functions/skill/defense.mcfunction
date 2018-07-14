##############################
### パペット防御力支援
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:resistance 5 1
execute if score @s PupRecordLevel matches 200..299 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:resistance 5 2
execute if score @s PupRecordLevel matches 300.. run effect give @a[distance=..24] minecraft:resistance 5 2

###---演出---Start
particle minecraft:dust 1 1 1 2 ~ ~2.1 ~ 0 0 0 1 1 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] anchored eyes run particle minecraft:enchanted_hit ^ ^ ^0.5 0.1 0.3 0.1 0.2 10 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] run playsound minecraft:block.anvil.use master @a[distance=..32] ~ ~ ~ 1 2
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] anchored eyes run particle minecraft:enchanted_hit ^ ^ ^0.5 0.1 0.3 0.1 0.2 10 force
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 2
###---演出---End
