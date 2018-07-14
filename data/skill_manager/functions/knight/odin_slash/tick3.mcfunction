##############################
### 斬鉄剣発動
##############################

###---演出---Start
playsound minecraft:entity.player.attack.strong master @a[distance=..32] ~ ~ ~ 3 1.56
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^4 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^6 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^8 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^12 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^14 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
tp @s ~ ~ ~ ~-12 ~-15
###---演出---End

scoreboard players operation @e[distance=..7,tag=Mob] StoredDamage > @s SkillAttribute
scoreboard players add @e[distance=..7,tag=Mob] Damage 0
