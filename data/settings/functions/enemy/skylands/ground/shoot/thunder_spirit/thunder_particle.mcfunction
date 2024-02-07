#Function
particle dust_color_transition 1.000 0.851 0.098 1 1.000 0.929 0.702 ~ ~2 ~ 0.5 2 0.5 0 80 force @a[distance=..64]
particle dust_color_transition 1.000 0.843 0.000 1 1.000 0.929 0.702 ~ ~4 ~ 0.1 4 0.1 0 80 force @a[distance=..64]
particle smoke ~ ~ ~ 0 0 0 0.25 20 force @a[distance=..64]
particle item yellow_stained_glass ~ ~ ~ 0 0 0 0.5 20 force @a[distance=..64,tag=ShowParticles]
particle explosion ~ ~ ~ 0.2 0 0.2 0 3 force @a[distance=..64]
playsound entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 1.5 2
playsound entity.lightning_bolt.impact hostile @a[distance=..32] ~ ~ ~ 1.5 0 0
