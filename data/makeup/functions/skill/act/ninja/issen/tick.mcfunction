
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run data merge entity @s {Motion:[0d,0.5d,0d]}
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run particle minecraft:item minecraft:nether_wart ~ ~1 ~ 0.3 0.5 0.3 0.2 50 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run particle minecraft:item minecraft:redstone_block ~ ~1 ~ 0.1 0.1 0.1 0.2 15 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run playsound minecraft:entity.wither.shoot master @a[distance=..16] ~ ~ ~ 0.6 2
execute if score @s Issen matches 20.. as @e[distance=..2.5,tag=Mob] run playsound minecraft:block.bubble_column.upwards_inside master @a[distance=..16] ~ ~ ~ 3 2
execute if score @s Issen matches 20.. run playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 3 1.2
execute if score @s Issen matches 20.. run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[tag=ShowParticles]
execute if score @s Issen matches 20.. run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10 force @a[tag=ShowParticles]
