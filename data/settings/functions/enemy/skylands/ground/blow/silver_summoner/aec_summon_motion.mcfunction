#Function
# 音
    playsound block.ender_chest.open hostile @a[distance=..32] ~ ~ ~ 2 0 0
    playsound block.ender_chest.open hostile @a[distance=..32] ~ ~ ~ 2 0.01 0
    playsound block.ender_chest.open hostile @a[distance=..32] ~ ~ ~ 2 0.02 0
# 地面にAEC召喚
    execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Initialized"],Particle:"block air",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:15b,Duration:6,ShowParticles:1b}]}
