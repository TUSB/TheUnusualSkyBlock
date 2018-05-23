##############################
### パペット遠隔単体攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players add @e[distance=..17,tag=Mob,sort=nearest,limit=1] Damage 300
execute if score @s PupRecordLevel matches 200..299 run scoreboard players add @e[distance=..17,tag=Mob,sort=nearest,limit=1] Damage 600
execute if score @s PupRecordLevel matches 300.. run scoreboard players add @e[distance=..17,tag=Mob,sort=nearest,limit=1] Damage 1200

#####演出開始#####

#####演出終了#####
