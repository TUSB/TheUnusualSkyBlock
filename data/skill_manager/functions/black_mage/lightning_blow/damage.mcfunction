##############################
### ライトニングブロー攻撃
##############################

scoreboard players operation @e[distance=..6,tag=Mob,nbt={HurtTime:10s},limit=1,sort=nearest] Damage += @s LightningBlow
scoreboard players reset @s LightningBlow

###---演出---Start
execute as @e[distance=..6,tag=Mob,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run particle minecraft:dust 1 1 0 1.5 ~ ~10 ~ 0.15 5 0.15 0 100 force
execute as @e[distance=..6,tag=Mob,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~10 ~ 0.15 5 0.15 0 15 force
execute as @e[distance=..6,tag=Mob,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run particle minecraft:item minecraft:horn_coral_block ~ ~ ~ 0 0 0 0.3 50 force
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End
