##############################
### パペット体力回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:regeneration 1 3
execute if score @s PupRecordLevel matches 200..299 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:regeneration 1 4
execute if score @s PupRecordLevel matches 300.. run effect give @a[distance=..24] minecraft:regeneration 1 4

###---演出---Start
particle minecraft:dust 0 1 0 2 ~ ~2.1 ~ 0 0 0 1 1 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] anchored eyes run particle minecraft:heart ^ ^ ^0.5 0.1 0.3 0.1 0.2 3 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] run playsound minecraft:entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 1 1.6
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] anchored eyes run particle minecraft:heart ^ ^ ^0.5 0.1 0.3 0.1 0.2 3 force
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.6
###---演出---End
