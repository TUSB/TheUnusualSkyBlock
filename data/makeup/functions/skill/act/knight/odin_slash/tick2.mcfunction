
### 斬鉄剣発動

playsound minecraft:entity.player.attack.strong master @a[distance=..32] ~ ~ ~ 3 1
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~ ~ 0.5 0 0.5 0 30 force
execute positioned ^ ^ ^6 run particle minecraft:crit ~ ~ ~ 1.5 0 1.5 0 30 force
execute positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 2.5 0 2.5 0 30 force
execute positioned ^ ^ ^14 run particle minecraft:crit ~ ~ ~ 3.5 0 3.5 0 30 force
tp @s ~ ~ ~ ~-48 ~3.5
