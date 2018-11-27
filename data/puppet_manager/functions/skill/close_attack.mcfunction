##############################
### パペット近接単体攻撃
##############################

###ダメージ付与
execute if score @s PupRecordLevel matches ..199 run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 1000
execute if score @s PupRecordLevel matches 200..299 run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 2000
execute if score @s PupRecordLevel matches 300.. run scoreboard players add @e[distance=..3,tag=Mob,sort=nearest,limit=1] Damage 4000

###---演出---Start
particle minecraft:dust 1 0 0 2 ~ ~2.1 ~ 0 0 0 1 1 force @a[tag=ShowParticles]
playsound minecraft:entity.evoker_fangs.attack master @a[distance=..32] ~ ~ ~ 3 2
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^2 0 0 0 0 1 force @a[tag=ShowParticles]
###---演出---End
