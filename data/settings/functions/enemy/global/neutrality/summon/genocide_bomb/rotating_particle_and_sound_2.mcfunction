#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=furthest,team=Friendly,distance=..3.5,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..3.5,limit=3] @s
effect give @a[distance=..3.5,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.002
particle witch ^0.0 ^0.0 ^2.75 ^0.0 ^1000000000.0 ^2.75 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^2.75 ^0.0 ^-1000000000.0 ^2.75 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-2.75 ^-0.0 ^1000000000.0 ^-2.75 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-2.75 ^-0.0 ^-1000000000.0 ^-2.75 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.002
particle smoke ^0.52 ^0.0 ^2.69 ^-190808992.0 ^0.0 ^-981627136.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.04 ^0.0 ^2.54 ^-378648608.0 ^0.0 ^-925540480.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.51 ^0.0 ^2.28 ^-551936960.0 ^0.0 ^-833885760.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.93 ^0.0 ^1.95 ^-704014720.0 ^0.0 ^-710185408.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.27 ^0.0 ^1.53 ^-829037568.0 ^0.0 ^-559192896.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.53 ^0.0 ^1.06 ^-922200896.0 ^0.0 ^-386710912.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.68 ^0.0 ^0.55 ^-979924672.0 ^0.0 ^-199367904.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.74 ^0.0 ^0.01 ^-999990528.0 ^0.0 ^-4363289.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.69 ^0.0 ^-0.52 ^-981627136.0 ^0.0 ^190809008.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.54 ^0.0 ^-1.04 ^-925540480.0 ^0.0 ^378648640.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.28 ^0.0 ^-1.51 ^-833885824.0 ^0.0 ^551936960.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.95 ^0.0 ^-1.93 ^-710185472.0 ^0.0 ^704014720.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.53 ^0.0 ^-2.27 ^-559192896.0 ^0.0 ^829037632.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.06 ^0.0 ^-2.53 ^-386711008.0 ^0.0 ^922201024.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.55 ^0.0 ^-2.68 ^-199368000.0 ^0.0 ^979924736.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.01 ^0.0 ^-2.74 ^-4363351.0 ^0.0 ^999990464.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.52 ^0.0 ^-2.69 ^190808912.0 ^0.0 ^981627136.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.04 ^0.0 ^-2.54 ^378648544.0 ^0.0 ^925540480.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.51 ^0.0 ^-2.28 ^551936896.0 ^0.0 ^833885760.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.93 ^0.0 ^-1.95 ^704014656.0 ^0.0 ^710185408.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.27 ^0.0 ^-1.53 ^829037568.0 ^0.0 ^559193024.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.53 ^0.0 ^-1.06 ^922200832.0 ^0.0 ^386711104.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.68 ^0.0 ^-0.55 ^979924672.0 ^0.0 ^199368080.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.74 ^0.0 ^-0.01 ^999990528.0 ^0.0 ^4363456.5 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.69 ^0.0 ^0.52 ^981627200.0 ^0.0 ^-190808816.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.54 ^0.0 ^1.04 ^925540608.0 ^0.0 ^-378648416.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.28 ^0.0 ^1.51 ^833885888.0 ^0.0 ^-551936896.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.95 ^0.0 ^1.93 ^710185472.0 ^0.0 ^-704014656.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.53 ^0.0 ^2.27 ^559193024.0 ^0.0 ^-829037504.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.06 ^0.0 ^2.53 ^386711104.0 ^0.0 ^-922200960.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.55 ^0.0 ^2.68 ^199368064.0 ^0.0 ^-979924608.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.01 ^0.0 ^2.74 ^4363432.0 ^0.0 ^-999990464.0 0.00000000007 0 force @a[distance=..64,tag=ShowParticles]

