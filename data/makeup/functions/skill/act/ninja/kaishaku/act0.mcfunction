
playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1 2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^ ^0.5 0 0 0 3 2 force
