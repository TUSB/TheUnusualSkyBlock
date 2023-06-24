#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=furthest,team=Friendly,distance=..6.5,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..6.5,limit=3] @s
effect give @a[distance=..6.5,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.008
particle witch ^0.0 ^0.0 ^6.3 ^0.0 ^1000000000.0 ^6.3 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^6.3 ^0.0 ^-1000000000.0 ^6.3 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-6.3 ^-0.0 ^1000000000.0 ^-6.3 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-6.3 ^-0.0 ^-1000000000.0 ^-6.3 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.008
particle smoke ^1.2 ^0.0 ^6.18 ^-190809008.0 ^0.0 ^-981627136.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.39 ^0.0 ^5.83 ^-378648640.0 ^0.0 ^-925540480.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.48 ^0.0 ^5.25 ^-551936960.0 ^0.0 ^-833885760.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.44 ^0.0 ^4.47 ^-704014720.0 ^0.0 ^-710185344.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.22 ^0.0 ^3.52 ^-829037504.0 ^0.0 ^-559192896.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.81 ^0.0 ^2.44 ^-922200896.0 ^0.0 ^-386710912.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^6.17 ^0.0 ^1.26 ^-979924736.0 ^0.0 ^-199367888.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^6.3 ^0.0 ^0.03 ^-999990464.0 ^0.0 ^-4363303.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^6.18 ^0.0 ^-1.2 ^-981627136.0 ^0.0 ^190809008.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.83 ^0.0 ^-2.39 ^-925540416.0 ^0.0 ^378648640.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.25 ^0.0 ^-3.48 ^-833885824.0 ^0.0 ^551936960.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.47 ^0.0 ^-4.44 ^-710185344.0 ^0.0 ^704014784.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.52 ^0.0 ^-5.22 ^-559192960.0 ^0.0 ^829037568.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.44 ^0.0 ^-5.81 ^-386710976.0 ^0.0 ^922200896.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.26 ^0.0 ^-6.17 ^-199367968.0 ^0.0 ^979924672.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.03 ^0.0 ^-6.3 ^-4363375.5 ^0.0 ^999990464.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.2 ^0.0 ^-6.18 ^190808912.0 ^0.0 ^981627136.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.39 ^0.0 ^-5.83 ^378648512.0 ^0.0 ^925540544.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.48 ^0.0 ^-5.25 ^551936896.0 ^0.0 ^833885824.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.44 ^0.0 ^-4.47 ^704014656.0 ^0.0 ^710185408.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.22 ^0.0 ^-3.52 ^829037568.0 ^0.0 ^559193024.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.81 ^0.0 ^-2.44 ^922200896.0 ^0.0 ^386711136.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-6.17 ^0.0 ^-1.26 ^979924672.0 ^0.0 ^199368112.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-6.3 ^0.0 ^-0.03 ^999990528.0 ^0.0 ^4363467.5 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-6.18 ^0.0 ^1.2 ^981627200.0 ^0.0 ^-190808816.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.83 ^0.0 ^2.39 ^925540608.0 ^0.0 ^-378648416.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.25 ^0.0 ^3.48 ^833885888.0 ^0.0 ^-551936832.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.47 ^0.0 ^4.44 ^710185472.0 ^0.0 ^-704014592.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.52 ^0.0 ^5.22 ^559193024.0 ^0.0 ^-829037568.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.44 ^0.0 ^5.81 ^386711136.0 ^0.0 ^-922200896.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.26 ^0.0 ^6.17 ^199368048.0 ^0.0 ^-979924672.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.03 ^0.0 ^6.3 ^4363407.0 ^0.0 ^-999990400.0 0.00000000043 0 force @a[distance=..64,tag=ShowParticles]

