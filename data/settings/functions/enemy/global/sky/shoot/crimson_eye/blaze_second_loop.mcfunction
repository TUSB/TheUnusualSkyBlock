#Function
# 警告線は警告音と共に
    scoreboard players remove # Calc 1
    particle dust 1.0 0.15 0.0 0.6 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    execute positioned ~-0.5 ~-0.5 ~-0.5 run playsound block.note_block.bit hostile @a[predicate=entity:player,dx=0] ~ ~ ~ 0.5 2 0.1
    execute if score # Calc matches 1.. positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_second_loop
