#Function
# パーティクルと音
    particle dust_color_transition 0.000 1.000 0.9 1.5 0 0.35 1 ~ ~0.65 ~ 0.2 0.2 0.2 0 4 force @a[distance=..32,tag=ShowParticles]
    scoreboard players operation _ _ = $Tick Count
    scoreboard players set _ Calc 4
    scoreboard players operation _ _ /= _ Calc
    execute if score _ _ matches 0 run playsound block.beacon.power_select hostile @a[distance=..8] ~ ~ ~ 0.2 2 0
