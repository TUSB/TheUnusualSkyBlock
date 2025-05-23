#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    particle dust{color:[0.0,-1.0,-1.0],scale:1} ^ ^ ^ 0.1 0.1 0.1 0 1 force @a[distance=..32,tag=ShowParticles]
    particle glow ^ ^ ^ 0.15 0.15 0.15 0 1 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[predicate=entity:player,dx=0,dy=0,dz=0] add Landing
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!player,predicate=entity:friendly,dx=0,dy=0,dz=0] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^0.5 run function settings:entity/skylands/boss/shoot/sonica_ai/beam_damage2
