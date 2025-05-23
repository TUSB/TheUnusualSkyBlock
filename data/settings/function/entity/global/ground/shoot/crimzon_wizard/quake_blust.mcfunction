#Function
particle dust{color:[100000000.0,1.0,0.0],scale:2} ~ ~0.25 ~ 0.5 0.5 0.5 0 50 force @a[distance=..32]
particle dust{color:[100000000.0,2.0,0.0],scale:1.5} ~ ~2 ~ 0.2 2 0.2 0 50 force @a[distance=..32]
particle dust{color:[100000000.0,2.0,0.0],scale:1} ~ ~4 ~ 0.1 4 0.1 0 50 force @a[distance=..32]
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.8 1.5
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.8 0.8
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1.5 1.3
