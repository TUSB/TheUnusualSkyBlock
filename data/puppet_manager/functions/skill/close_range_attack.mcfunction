##############################
### パペット近接範囲攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players add @e[distance=..6,tag=Mob] Damage 200
execute if score @s PupRecordLevel matches 200..299 run scoreboard players add @e[distance=..6,tag=Mob] Damage 400
execute if score @s PupRecordLevel matches 300.. run scoreboard players add @e[distance=..6,tag=Mob] Damage 800

###---演出---Start
particle minecraft:dust 1 0 0 2 ~ ~2.1 ~ 0 0 0 1 1 force
playsound minecraft:entity.evoker_fangs.attack master @a[distance=..32] ~ ~ ~ 3 1.2
particle minecraft:explosion ~ ~ ~ 0 0 0 6 3 force
###---演出---End
