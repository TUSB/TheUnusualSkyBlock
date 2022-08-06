
execute if score $Second Count matches 1 run playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[nbt={PortalCooldown:20}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force @a[tag=ShowParticles]
execute positioned ~-5 ~-3 ~-5 as @e[type=minecraft:spawner_minecart,tag=Spawner,dx=10,dy=8,dz=10] positioned as @s run particle minecraft:falling_dust minecraft:orange_wool ~ ~ ~ 0.5 0.5 0.5 1 2 force @a[tag=ShowParticles]
