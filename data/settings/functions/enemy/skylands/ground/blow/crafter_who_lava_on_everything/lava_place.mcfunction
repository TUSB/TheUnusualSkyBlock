#Function
execute if block ~ ~ ~ minecraft:air run playsound minecraft:block.wool.place block @a[distance=..32] ~ ~ ~ 0.7 1.2 0
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ lava[level=12] replace
