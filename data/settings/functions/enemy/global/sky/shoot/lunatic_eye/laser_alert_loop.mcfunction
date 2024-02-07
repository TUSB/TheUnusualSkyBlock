#Function
# 警告音を鳴らす
    scoreboard players remove # Calc 1
    execute positioned ~-1 ~-1 ~-1 run playsound block.note_block.bit hostile @a[predicate=entity:player,dx=1,dy=1,dz=1] ~ ~ ~ 0.5 2 0.1
    execute if score # Calc matches 1.. positioned ^ ^ ^1 run function settings:enemy/global/sky/shoot/lunatic_eye/laser_alert_loop
