#Function
particle dust 100000000 0.5 0 1.2 ~ ~2 ~ 1 3 1 0 150 force @a[distance=..32,tag=ShowParticles]
particle dust 100000000 0.5 0 1.2 ~ ~4 ~ 0.25 6 0.25 0 150 force @a[distance=..32,tag=ShowParticles]
particle large_smoke ~ ~ ~ 0 0 0 0.25 30 force @a[distance=..32,tag=ShowParticles]
playsound entity.generic.extinguish_fire hostile @a[distance=..32] ~ ~ ~ 1 0 0
playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 2 0
playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.99 0
playsound block.respawn_anchor.set_spawn hostile @a[distance=..32] ~ ~ ~ 1 2 0
