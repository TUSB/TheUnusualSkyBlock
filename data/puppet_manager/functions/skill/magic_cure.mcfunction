##############################
### パペット魔力回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players remove @a[distance=..24,tag=ActiveMaster,limit=1] MPConsumption 3
execute if score @s PupRecordLevel matches 200..299 run scoreboard players remove @a[distance=..24,tag=ActiveMaster,limit=1] MPConsumption 6
execute if score @s PupRecordLevel matches 300.. run scoreboard players remove @a[distance=..24] MPConsumption 6

###---演出---Start
particle minecraft:dust 1 0 1 2 ~ ~2.1 ~ 0 0 0 1 1 force
execute if score @s PupRecordLevel matches ..299 as @a[distance=..24,tag=ActiveMaster,limit=1] at @s anchored eyes run particle minecraft:witch ^ ^ ^0.5 0.1 0.3 0.1 0 5 force
execute if score @s PupRecordLevel matches ..299 as @a[distance=..24,tag=ActiveMaster,limit=1] at @s run playsound minecraft:block.conduit.activate master @a[distance=..32] ~ ~ ~ 3 2
execute if score @s PupRecordLevel matches 300.. as @a[distance=..24] at @s anchored eyes run particle minecraft:witch ^ ^ ^0.5 0.1 0.3 0.1 0 5 force
execute if score @s PupRecordLevel matches 300.. as @a[distance=..24] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
###---演出---End
