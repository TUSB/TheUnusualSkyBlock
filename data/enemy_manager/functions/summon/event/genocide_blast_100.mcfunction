##############################
### ジェノサイドボムの爆風召喚 - Event  
##############################

effect give @a[gamemode=!creative,distance=..6] minecraft:instant_damage 1 5 true 
scoreboard players set @e[limit=64,distance=..6,tag=Mob] Damage 1000000 
playsound minecraft:entity.wither.death master @a[distance=..32] ~ ~ ~ 0.4 0 0.1
playsound minecraft:entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 3 0 
playsound minecraft:block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 3 1.5 
playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 0 
playsound minecraft:block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 3 0 
playsound minecraft:block.ender_chest.open master @a[distance=..32] ~ ~ ~ 10 0 
particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.4 100 force @a[tag=ShowParticles] 
particle minecraft:portal ~ ~0.5 ~ 0 0 0 5 100 force @a[tag=ShowParticles] 
particle minecraft:dust -100000000 0 -10 3 ~ ~0.5 ~ 1.7 1.7 1.7 0.7 100 force @a[tag=ShowParticles] 
particle minecraft:dust -1 -100 100000000 4 ~ ~0.5 ~ 3.5 3.5 3.5 1 100 force @a[tag=ShowParticles] 
particle minecraft:dust 1 -100000000 100000000 2 ~ ~0.5 ~ 1.2 1.2 1.2 0.5 100 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 0 3 ~ ~0.5 ~ 0.2 0.2 0.2 0 100 force @a[tag=ShowParticles]
