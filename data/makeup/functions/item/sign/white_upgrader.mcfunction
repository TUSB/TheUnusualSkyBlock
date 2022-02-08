##############################
### 白材強化の印版
##############################
particle minecraft:instant_effect ~ ~-0.5 ~ 0 0 0 1 100 force @a[tag=ShowParticles]
particle minecraft:firework ~ ~5 ~ 0.3 9 0.3 0 100 force @a[tag=ShowParticles]
particle minecraft:firework ~ ~5 ~ 10 7 10 0.1 1000 force @a[tag=ShowParticles]
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 2