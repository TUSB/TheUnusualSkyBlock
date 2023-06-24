#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=furthest,team=Friendly,distance=..4.5,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..4.5,limit=3] @s
effect give @a[distance=..4.5,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.004
particle witch ^0.0 ^0.0 ^3.49 ^0.0 ^1000000000.0 ^3.49 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^3.49 ^0.0 ^-1000000000.0 ^3.49 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-3.49 ^-0.0 ^1000000000.0 ^-3.49 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-3.49 ^-0.0 ^-1000000000.0 ^-3.49 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.004
particle smoke ^0.67 ^0.0 ^3.44 ^-190809024.0 ^0.0 ^-981627200.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.33 ^0.0 ^3.24 ^-378648640.0 ^0.0 ^-925540480.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.93 ^0.0 ^2.92 ^-551936960.0 ^0.0 ^-833885760.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.46 ^0.0 ^2.49 ^-704014720.0 ^0.0 ^-710185344.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.9 ^0.0 ^1.96 ^-829037504.0 ^0.0 ^-559192960.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.23 ^0.0 ^1.35 ^-922201024.0 ^0.0 ^-386710944.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.43 ^0.0 ^0.7 ^-979924672.0 ^0.0 ^-199367872.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.5 ^0.0 ^0.02 ^-999990464.0 ^0.0 ^-4363278.5 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.44 ^0.0 ^-0.67 ^-981627200.0 ^0.0 ^190809040.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.24 ^0.0 ^-1.33 ^-925540416.0 ^0.0 ^378648608.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.92 ^0.0 ^-1.93 ^-833885760.0 ^0.0 ^551936896.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.49 ^0.0 ^-2.46 ^-710185344.0 ^0.0 ^704014784.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.96 ^0.0 ^-2.9 ^-559192960.0 ^0.0 ^829037568.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.35 ^0.0 ^-3.23 ^-386711008.0 ^0.0 ^922200896.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.7 ^0.0 ^-3.43 ^-199367952.0 ^0.0 ^979924672.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.02 ^0.0 ^-3.5 ^-4363378.0 ^0.0 ^999990528.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.67 ^0.0 ^-3.44 ^190808944.0 ^0.0 ^981627264.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.33 ^0.0 ^-3.24 ^378648544.0 ^0.0 ^925540544.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.93 ^0.0 ^-2.92 ^551936896.0 ^0.0 ^833885888.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.46 ^0.0 ^-2.49 ^704014656.0 ^0.0 ^710185408.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.9 ^0.0 ^-1.96 ^829037504.0 ^0.0 ^559193024.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.23 ^0.0 ^-1.35 ^922200832.0 ^0.0 ^386711072.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.43 ^0.0 ^-0.7 ^979924672.0 ^0.0 ^199368112.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.5 ^0.0 ^-0.02 ^999990400.0 ^0.0 ^4363476.5 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.44 ^0.0 ^0.67 ^981627264.0 ^0.0 ^-190808816.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.24 ^0.0 ^1.33 ^925540544.0 ^0.0 ^-378648448.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.92 ^0.0 ^1.93 ^833885888.0 ^0.0 ^-551936832.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.49 ^0.0 ^2.46 ^710185472.0 ^0.0 ^-704014592.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.96 ^0.0 ^2.9 ^559193024.0 ^0.0 ^-829037440.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.35 ^0.0 ^3.23 ^386711104.0 ^0.0 ^-922200960.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.7 ^0.0 ^3.43 ^199368048.0 ^0.0 ^-979924672.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.02 ^0.0 ^3.5 ^4363439.5 ^0.0 ^-999990400.0 0.00000000015 0 force @a[distance=..64,tag=ShowParticles]

