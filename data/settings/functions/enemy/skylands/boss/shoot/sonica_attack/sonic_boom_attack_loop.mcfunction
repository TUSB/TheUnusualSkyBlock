#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    particle sonic_boom ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle soul_fire_flame ^ ^ ^ 1 1 1 0.01 10 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[predicate=entity:player,dx=2,dy=2,dz=2,scores={ProjectileTime=0..}] add Landing
    execute positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[type=!player,predicate=entity:friendly,dx=2,dy=2,dz=2] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^2 run function settings:enemy/skylands/boss/shoot/sonica_attack/sonic_boom_attack_loop
