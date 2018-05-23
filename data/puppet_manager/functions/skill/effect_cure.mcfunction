##############################
### パペット状態異常回復
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 as @a[distance=..32,tag=ActiveMaster,limit=1] run function puppet_manager:skill/effect/clear1
execute if score @s PupRecordLevel matches 200..299 as @a[distance=..32,tag=ActiveMaster,limit=1] run function puppet_manager:skill/effect/clear2
execute if score @s PupRecordLevel matches 300.. as @a[distance=..32] run function puppet_manager:skill/effect/clear2

#####演出開始#####

#####演出終了#####
