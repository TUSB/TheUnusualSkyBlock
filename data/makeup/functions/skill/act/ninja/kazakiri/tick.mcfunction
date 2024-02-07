execute if score @s Kazakiri matches 100.. run particle minecraft:cloud ~ ~-0.1 ~ 0.4 0 0.4 0.1 3 force @a[tag=ShowParticles]
execute if score @s Kazakiri matches ..99 run particle minecraft:cloud ~ ~-0.1 ~ 0.4 0 0.4 0.1 1 force @a[tag=ShowParticles]
execute if score @s Kazakiri matches 100.. run playsound minecraft:entity.phantom.flap master @a[distance=..16] ~ ~64 ~ 8 0.5
execute if score @s Kazakiri matches ..99 run playsound minecraft:entity.phantom.flap master @a[distance=..16] ~ ~64 ~ 8 2
execute if blocks ~-2 ~-1 ~-2 ~2 ~-1 ~2 1 0 1 all run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:water[level=1] replace minecraft:water
fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air replace minecraft:fire
