execute if score @s Level matches 1 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.2 0.2 0.2 0 3 force
execute if score @s Level matches 2 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.4 0.4 0.4 0 4 force
execute if score @s Level matches 3 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.6 0.6 0.6 0 5 force
execute if score @s Level matches 4 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 0.8 0.8 0.8 0 6 force
execute if score @s Level matches 5 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 1.0 1.0 1.0 0 7 force
execute if score @s Level matches 6 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 1.2 1.2 1.2 0 8 force
execute if score @s Level matches 7 run particle minecraft:dust -1 0 -1 3.2 ~ ~ ~ 1.4 1.4 1.4 0 9 force
execute if score @s Level matches 8 run particle minecraft:dust -1 0 -1 3.4 ~ ~ ~ 1.6 1.6 1.6 0 11 force
execute if score @s Level matches 9 run particle minecraft:dust -1 0 -1 3.6 ~ ~ ~ 1.8 1.8 1.8 0 13 force
execute if score @s Level matches 10 run particle minecraft:dust -1 0 -1 3.8 ~ ~ ~ 2.0 2.0 2.0 0 15 force @a[tag=ShowParticles]
execute if score @s Level matches 10 run particle minecraft:dust 100000000 2 1 3 ~ ~ ~ 2.0 2.0 2.0 0 5 force @a[tag=ShowParticles]
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 0.2 0.5
