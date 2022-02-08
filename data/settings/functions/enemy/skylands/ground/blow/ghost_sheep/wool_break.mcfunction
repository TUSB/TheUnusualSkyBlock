#Function
execute if block ~ ~ ~ minecraft:white_wool run playsound minecraft:block.wool.break block @a ~ ~ ~ 1 1.2
execute if block ~ ~ ~ minecraft:white_wool run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force @a[tag=ShowParticles]
execute if block ~ ~ ~ minecraft:white_wool run setblock ~ ~ ~ air replace
