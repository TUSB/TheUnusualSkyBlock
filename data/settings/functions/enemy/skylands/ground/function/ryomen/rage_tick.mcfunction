#Function
# レイジ発動している時はParticleを発生させる
    data modify entity @s Tags set from storage mob_data: Tags
    execute if entity @s[tag=RyomenRage] run particle dust 0.45 0 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 4 force @a[distance=..32,tag=ShowParticles]
