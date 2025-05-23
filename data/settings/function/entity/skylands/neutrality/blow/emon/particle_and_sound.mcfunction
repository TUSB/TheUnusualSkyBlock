#Function
particle minecraft:sweep_attack ~ ~ ~ 2 2 2 0 50 force @a[tag=ShowParticles]
playsound minecraft:entity.drowned.shoot hostile @a[distance=..48] ~ ~ ~ 3 1.5
execute if score $Tick Count matches 0 run playsound minecraft:item.elytra.flying hostile @a[distance=..48] ~ ~ ~ 0.3 2
