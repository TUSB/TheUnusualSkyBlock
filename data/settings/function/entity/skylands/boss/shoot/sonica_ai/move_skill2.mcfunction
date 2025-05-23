#Function
# 演出
    particle dust{color:[0.0,-1.0,-1.0],scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 30 force @a[distance=..32,tag=ShowParticles]
    execute positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function settings:entity/skylands/boss/shoot/sonica_ai/move_skill2
