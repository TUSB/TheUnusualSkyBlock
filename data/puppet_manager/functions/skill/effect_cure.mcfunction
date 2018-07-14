##############################
### パペット状態異常回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 as @a[distance=..24,tag=ActiveMaster,limit=1] run function puppet_manager:skill/effect/clear1
execute if score @s PupRecordLevel matches 200..299 as @a[distance=..24,tag=ActiveMaster,limit=1] run function puppet_manager:skill/effect/clear2
execute if score @s PupRecordLevel matches 300.. as @a[distance=..24] run function puppet_manager:skill/effect/clear2

###---演出---Start
particle minecraft:dust 0 1 0 2 ~ ~2.1 ~ 0 0 0 1 1 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] anchored eyes run particle minecraft:happy_villager ^ ^ ^0.5 0.2 0.2 0.2 0 5 force
execute if score @s PupRecordLevel matches ..299 at @a[distance=..24,tag=ActiveMaster,limit=1] run playsound minecraft:entity.bat.ambient master @a[distance=..32] ~ ~ ~ 2 1.3
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] anchored eyes run minecraft:happy_villager ^ ^ ^0.5 0.2 0.2 0.2 0 5 force
execute if score @s PupRecordLevel matches 300.. at @a[distance=..24] run playsound minecraft:entity.bat.ambient master @s ~ ~ ~ 2 1.3
###---演出---End
