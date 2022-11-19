#Function
execute if block ~ ~ ~ minecraft:lava[level=12] run playsound minecraft:block.wool.break block @a[distance=..32] ~ ~ ~ 0.7 1.2 0
execute if block ~ ~ ~ minecraft:lava[level=12] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
execute if block ~ ~ ~ minecraft:lava[level=12] run setblock ~ ~ ~ air replace
