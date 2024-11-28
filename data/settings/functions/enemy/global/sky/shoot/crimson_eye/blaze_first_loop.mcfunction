#Function
# 追尾線は表示だけ
    scoreboard players remove # Calc 1
    particle dust 0.5 0 0 0.6 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32,tag=ShowParticles]
    execute if score # Calc matches 1.. positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_first_loop
