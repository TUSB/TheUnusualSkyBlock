##############################
### パペット体力回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:regeneration 1 3
execute if score @s PupRecordLevel matches 200..299 run effect give @a[distance=..24,tag=ActiveMaster,limit=1] minecraft:regeneration 1 4
execute if score @s PupRecordLevel matches 300.. run effect give @a[distance=..24] minecraft:regeneration 1 4

#####演出開始#####

#####演出終了#####
