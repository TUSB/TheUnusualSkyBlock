particle minecraft:sweep_attack ~ ~15 ~ 2 4 2 0 100 force @a[tag=ShowParticles]
execute if score $Second Count matches 0 run playsound minecraft:item.elytra.flying master @a[distance=..48] ~ ~ ~ 0.3 2
