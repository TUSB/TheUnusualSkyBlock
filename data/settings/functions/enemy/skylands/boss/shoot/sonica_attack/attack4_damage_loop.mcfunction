#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    particle sonic_boom ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    particle soul_fire_flame ^ ^ ^ 1 1 1 0.01 10 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-1 ~-1 ~-1 run tag @a[predicate=entity:player,dx=1,dy=1,dz=1] add Landing
    execute positioned ~-1 ~-1 ~-1 run tag @e[type=!player,predicate=entity:friendly,dx=1,dy=1,dz=1] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^1 run function settings:enemy/skylands/boss/shoot/sonica_attack/attack4_damage_loop
