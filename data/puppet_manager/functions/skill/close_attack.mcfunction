##############################
### パペット近接単体攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 1000
execute if score @s PupRecordLevel matches 200..299 run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 2000
execute if score @s PupRecordLevel matches 300.. run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 4000

#####演出開始#####

#####test

#####演出終了#####
