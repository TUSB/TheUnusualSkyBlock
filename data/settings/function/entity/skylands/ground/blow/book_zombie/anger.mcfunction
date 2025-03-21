#Function
# ダメージを受けると感知範囲が増大する
    particle angry_villager ~ ~1.6 ~ 0.15 0.15 0.15 1 10 force @a[distance=..32,tag=ShowParticles]
    attribute @s generic.follow_range base set 128
    attribute @s generic.attack_speed base set 3.0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.5 0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.55 0 
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.6 0 
