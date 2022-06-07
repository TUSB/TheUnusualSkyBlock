##############################
### 転移の印版
##############################
execute positioned as @a[sort=nearest,limit=1] run particle minecraft:firework ~ ~38 ~ 0.01 80 0.01 0.1 500 force @a[tag=ShowParticles]
execute positioned as @a[sort=nearest,limit=1] run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1
