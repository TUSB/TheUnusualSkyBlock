##############################
### パペット魔力回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players remove @a[distance=..24,tag=ActiveMaster,limit=1] MPConsumption 3
execute if score @s PupRecordLevel matches 200..299 run scoreboard players remove @a[distance=..24,tag=ActiveMaster,limit=1] MPConsumption 6
execute if score @s PupRecordLevel matches 300.. run scoreboard players remove @a[distance=..24] MPConsumption 6

###---演出---Start

###---演出---End
