#Function
effect give @a[gamemode=!creative,distance=..6] instant_damage 1 5 true
scoreboard players set _ Damage 100
scoreboard players set _ ElementFire 100
scoreboard players set _ ElementIce 100
scoreboard players set _ ElementLightning 100
scoreboard players set _ ElementLight 100
scoreboard players set _ ElementDark 100
execute as @e[tag=Mob,distance=..6] run function skill:damage/apply/
playsound entity.wither.death master @a[distance=..32] ~ ~ ~ 0.4 0 0.1
playsound entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 3 0
playsound block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 3 1.5
playsound entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 0
playsound block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 3 0
playsound block.ender_chest.open master @a[distance=..32] ~ ~ ~ 10 0
particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.4 100 force @a[tag=ShowParticles]
particle portal ~ ~0.5 ~ 0 0 0 5 100 force @a[tag=ShowParticles]
particle dust -100000000 0 -10 3 ~ ~0.5 ~ 1.7 1.7 1.7 0.7 100 force @a[tag=ShowParticles]
particle dust -1 -100 100000000 4 ~ ~0.5 ~ 3.5 3.5 3.5 1 100 force @a[tag=ShowParticles]
particle dust 1 -100000000 100000000 2 ~ ~0.5 ~ 1.2 1.2 1.2 0.5 100 force @a[tag=ShowParticles]
particle dust 0 0 0 3 ~ ~0.5 ~ 0.2 0.2 0.2 0 100 force @a[tag=ShowParticles]
