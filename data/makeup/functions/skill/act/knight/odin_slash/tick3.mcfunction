
### 斬鉄剣発動

playsound minecraft:entity.player.attack.strong master @a[distance=..32] ~ ~ ~ 3 1.56
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^4 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^6 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^8 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^12 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
execute positioned ^ ^ ^14 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force @a[tag=ShowParticles]
tp @s ~ ~ ~ ~-12 ~-15
