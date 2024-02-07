#Function
# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove # Calc 1
    execute positioned ~-1 ~-1 ~-1 run tag @a[predicate=entity:player,dx=1,dy=1,dz=1,scores={ProjectileTime=0..}] add Landing
    execute if score # Calc matches 1.. positioned ^ ^ ^1 run function settings:enemy/global/sky/shoot/lunatic_eye/laser_start_loop
