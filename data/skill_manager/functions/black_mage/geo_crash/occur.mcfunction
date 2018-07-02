##############################
### ジオクラッシュ発動
##############################

execute if score @s ModeSkill matches 51041 run scoreboard players add @e[distance=..20,tag=Mob,nbt={OnGround:true}] Damage 1000
execute if score @s ModeSkill matches 51042 run scoreboard players add @e[distance=..20,tag=Mob,nbt={OnGround:true}] Damage 2000
execute if score @s ModeSkill matches 51043 run scoreboard players add @e[distance=..20,tag=Mob,nbt={OnGround:true}] Damage 3500
execute if score @s ModeSkill matches 51044 run scoreboard players add @e[distance=..20,tag=Mob,nbt={OnGround:true}] Damage 5500

###---演出---Start
execute as @e[distance=..20,tag=Mob,nbt={OnGround:true}] at @s run particle minecraft:block minecraft:dirt ~ ~0.5 ~ 0.8 0.2 0.8 1 100 force
###---演出---End

tag @s remove GeoCrash
tag @s remove GeoCrash2
