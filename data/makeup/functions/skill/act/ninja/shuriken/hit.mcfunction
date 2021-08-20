particle minecraft:item minecraft:nether_wart ~ ~1 ~ 0.3 0.5 0.3 0.2 100 force @a[tag=ShowParticles]
particle minecraft:item minecraft:redstone_block ~ ~1 ~ 0.1 0.1 0.1 0.2 30 force @a[tag=ShowParticles]
execute as @a[distance=..32] at @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.6 2
playsound minecraft:block.bubble_column.upwards_inside master @a[distance=..32] ~ ~ ~ 3 2
