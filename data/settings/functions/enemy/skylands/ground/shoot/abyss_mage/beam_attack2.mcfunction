#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    particle dust -1 0 -1 2 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle witch ^ ^ ^ 0.05 0.05 0.05 0.01 2 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[predicate=entity:player,dx=0,dy=0,dz=0,scores={ProjectileTime=0..}] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #block:no_collision run function settings:enemy/skylands/ground/shoot/abyss_mage/beam_attack2
