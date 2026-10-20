#> makeup:skill/act/summoner/petit_black/tick
execute if score @s Level matches 1 run particle minecraft:dust{color:[0.7f,0f,0.7f],scale:3.0f} ~ ~ ~ 0.2 0.2 0.2 0 3 force
execute if score @s Level matches 2 run particle minecraft:dust{color:[0.7f,0f,0.7f],scale:3.0f} ~ ~ ~ 0.4 0.4 0.4 0 4 force
execute if score @s Level matches 3 run particle minecraft:dust{color:[0.7f,0f,0.7f],scale:3.0f} ~ ~ ~ 0.6 0.6 0.6 0 5 force
execute if score @s Level matches 4 run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:3.0f} ~ ~ ~ 0.8 0.8 0.8 0 6 force
execute if score @s Level matches 5 run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:3.0f} ~ ~ ~ 1.0 1.0 1.0 0 7 force
execute if score @s Level matches 6 run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:3.0f} ~ ~ ~ 1.2 1.2 1.2 0 8 force
execute if score @s Level matches 7 run particle minecraft:dust{color:[-1f,0f,-1f],scale:3.2f} ~ ~ ~ 1.4 1.4 1.4 0 9 force
execute if score @s Level matches 8 run particle minecraft:dust{color:[-1f,0f,-1f],scale:3.4f} ~ ~ ~ 1.6 1.6 1.6 0 11 force
execute if score @s Level matches 9 run particle minecraft:dust{color:[-1f,0f,-1f],scale:3.6f} ~ ~ ~ 1.8 1.8 1.8 0 13 force
execute if score @s Level matches 10 run particle minecraft:dust{color:[-1f,0f,-1f],scale:3.8f} ~ ~ ~ 2.0 2.0 2.0 0 15 force @a[tag=ShowParticles]
execute if score @s Level matches 10 run particle minecraft:dust{color:[100000000f,2f,1f],scale:3.0f} ~ ~ ~ 2.0 2.0 2.0 0 5 force @a[tag=ShowParticles]
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 0.2 0.5
