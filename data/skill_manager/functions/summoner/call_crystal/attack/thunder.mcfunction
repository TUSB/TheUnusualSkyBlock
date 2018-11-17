##############################
### クリスタルThunder攻撃
##############################

###---演出---Start
particle minecraft:dust 1 1 0 3 ~ ~4 ~ 0.2 2 0.2 0 100 force
particle minecraft:dust 1 1 0 3 ~ ~ ~ 1 0 1 0 100 force
particle minecraft:dust 1 1 0 3 ~ ~-0.5 ~ 2 0 2 0 100 force
particle minecraft:dust 1 1 0 3 ~ ~-1 ~ 5 0 5 0 100 force
###---演出---End

function skill_manager:summoner/call_crystal/attack/common

scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToThunder,nbt={OnGround:true}] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToThunder,nbt=!{OnGround:false}] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $3 Const
scoreboard players operation $BaseDamage Global /= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToThunder,nbt={OnGround:true}] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToThunder,nbt=!{OnGround:false}] Damage += $BaseDamage Global

execute as @e[distance=..10,tag=Mob] at @s run function skill_manager:summoner/call_crystal/attack/erase_weekness
tag @e[distance=..10,tag=Mob] add WeakToEarth
