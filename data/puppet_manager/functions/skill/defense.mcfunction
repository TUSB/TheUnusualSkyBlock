##############################
### パペット防御力支援
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:resistance 5 1
execute if score @s PupRecordLevel matches 200..299 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:resistance 5 2
execute if score @s PupRecordLevel matches 300.. run effect give @a[distance=..24] minecraft:resistance 5 2

###---演出---Start

###---演出---End
