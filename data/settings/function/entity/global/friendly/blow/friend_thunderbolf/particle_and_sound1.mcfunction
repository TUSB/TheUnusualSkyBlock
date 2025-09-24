#Function
particle dust{color:[100000000.0,100000000.0,5000000.0],scale:2.0} ^ ^0.8 ^-1.4 0.03 0.03 0.03 0.5 1 force @a[distance=..64,tag=ShowParticles]
particle dust{color:[100000000.0,100000000.0,5000000.0],scale:0.8} ^ ^0.8 ^-1.4 0.4 0.4 0.4 1.5 5 force @a[distance=..64,tag=ShowParticles]
particle dust{color:[100000000.0,100000000.0,5000000.0],scale:0.4} ^ ^0.8 ^-1.4 0.3 0.3 0.3 1.5 10 force @a[distance=..64,tag=ShowParticles]
playsound block.chain.place neutral @a[distance=..64,tag=ShowParticles] ~ ~ ~ 1.0 2.0 0
