#> makeup:block/unique_floor/damage_floor
execute if score @s Age matches 1.. run particle minecraft:dust{color:[1,10000,0],scale:1.5} ~ ~1 ~ 0.5 1.2 0.5 0 15 force @a[tag=ShowParticles]
execute if score @s Age matches 1.. run particle minecraft:flame ~ ~ ~ 0.4 0 0.4 0.1 15 force @a[tag=ShowParticles]
execute if score @s Age matches 1.. run playsound minecraft:block.redstone_torch.burnout block @s ~ ~ ~ 0.6 0
