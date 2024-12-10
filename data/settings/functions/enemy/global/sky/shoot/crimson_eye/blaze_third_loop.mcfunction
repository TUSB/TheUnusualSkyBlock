#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    particle dust 100000000 1 0 1.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle flame ^ ^ ^ 0.1 0.1 0.1 0.01 3 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[predicate=entity:player,dx=0,scores={ProjectileTime=0..}] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_third_loop
