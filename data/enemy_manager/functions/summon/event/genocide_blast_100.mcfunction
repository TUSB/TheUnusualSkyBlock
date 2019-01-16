##############################
### ジェノサイドボムの爆風召喚 - Event  
##############################

effect give @a[gamemode=!creative,distance=..5] minecraft:instant_damage 1 5 true
scoreboard players set @e[limit=64,distance=..5,tag=Mob] Damage 1000000
playsound minecraft:entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 3 0
playsound minecraft:entity.wither.break_block master @a[distance=..32] ~ ~ ~ 3 0
playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 0
playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..32] ~ ~ ~ 3 0
particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.2 300 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 10000000 0 3 ~ ~0.5 ~ 2 2 2 1 100 force @a[tag=ShowParticles]
particle minecraft:dust 100000000 10000000 -10000000 4 ~ ~0.5 ~ 1 1 1 1 50 force @a[tag=ShowParticles]
