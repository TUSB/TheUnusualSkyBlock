##############################
### 斬鉄剣発動
##############################

###---演出---Start
playsound minecraft:entity.player.attack.strong master @a[distance=..32] ~ ~ ~ 3 1
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~ ~ 0.5 0 0.5 0 30 force @a[tag=ShowParticles]
execute positioned ^ ^ ^6 run particle minecraft:crit ~ ~ ~ 1.5 0 1.5 0 30 force @a[tag=ShowParticles]
execute positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 2.5 0 2.5 0 30 force @a[tag=ShowParticles]
execute positioned ^ ^ ^14 run particle minecraft:crit ~ ~ ~ 3.5 0 3.5 0 30 force @a[tag=ShowParticles]
tp @s ~ ~ ~ ~-48 ~3.5
###---演出---End

execute positioned ^ ^-2 ^10 run scoreboard players operation @e[dx=19,dy=3,dz=19,tag=Mob] Damage > @s SkillAttribute
