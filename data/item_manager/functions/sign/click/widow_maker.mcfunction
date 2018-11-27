##############################
### 全滅の印版
##############################

kill @e[distance=..15,team=Friendly]
tag @e[distance=..15,tag=Mob] add Garbage

playsound minecraft:entity.wither.death master @a[distance=..24] ~ ~ ~ 1 2
playsound minecraft:entity.wither.ambient master @a[distance=..24] ~ ~ ~ 1 1
particle minecraft:smoke ~ ~ ~ 0 0 0 0.3 100 force @a[tag=ShowParticles]
particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 100 force @a[tag=ShowParticles]

setblock ~ ~ ~ minecraft:air
