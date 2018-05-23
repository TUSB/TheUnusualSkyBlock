##############################
### パペット近接範囲攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players add @e[distance=..6,tag=Mob] Damage 200
execute if score @s PupRecordLevel matches 200..299 run scoreboard players add @e[distance=..6,tag=Mob] Damage 400
execute if score @s PupRecordLevel matches 300.. run scoreboard players add @e[distance=..6,tag=Mob] Damage 800

#####演出開始#####

#####演出終了#####
