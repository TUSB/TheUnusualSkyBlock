#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=furthest,team=Friendly,distance=..5.5,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..5.5,limit=3] @s
effect give @a[distance=..5.5,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.006
particle witch ^0.0 ^0.0 ^4.5 ^0.0 ^1000000000.0 ^4.5 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^4.5 ^0.0 ^-1000000000.0 ^4.5 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-4.5 ^-0.0 ^1000000000.0 ^-4.5 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-4.5 ^-0.0 ^-1000000000.0 ^-4.5 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.006
particle smoke ^0.86 ^0.0 ^4.42 ^-190809008.0 ^0.0 ^-981627136.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.7 ^0.0 ^4.16 ^-378648608.0 ^0.0 ^-925540480.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.48 ^0.0 ^3.75 ^-551936960.0 ^0.0 ^-833885888.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.17 ^0.0 ^3.2 ^-704014720.0 ^0.0 ^-710185344.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.73 ^0.0 ^2.52 ^-829037568.0 ^0.0 ^-559192896.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.15 ^0.0 ^1.74 ^-922200960.0 ^0.0 ^-386711008.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.41 ^0.0 ^0.9 ^-979924800.0 ^0.0 ^-199367936.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.5 ^0.0 ^0.02 ^-999990464.0 ^0.0 ^-4363295.5 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.42 ^0.0 ^-0.86 ^-981627136.0 ^0.0 ^190809008.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.16 ^0.0 ^-1.7 ^-925540480.0 ^0.0 ^378648576.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.75 ^0.0 ^-2.48 ^-833885760.0 ^0.0 ^551936960.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.2 ^0.0 ^-3.17 ^-710185344.0 ^0.0 ^704014656.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.52 ^0.0 ^-3.73 ^-559192896.0 ^0.0 ^829037632.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.74 ^0.0 ^-4.15 ^-386711072.0 ^0.0 ^922200960.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.9 ^0.0 ^-4.41 ^-199367984.0 ^0.0 ^979924672.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.02 ^0.0 ^-4.5 ^-4363372.0 ^0.0 ^999990464.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.86 ^0.0 ^-4.42 ^190808928.0 ^0.0 ^981627136.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.7 ^0.0 ^-4.16 ^378648480.0 ^0.0 ^925540544.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.48 ^0.0 ^-3.75 ^551936960.0 ^0.0 ^833885824.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.17 ^0.0 ^-3.2 ^704014656.0 ^0.0 ^710185472.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.73 ^0.0 ^-2.52 ^829037504.0 ^0.0 ^559192960.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.15 ^0.0 ^-1.74 ^922200832.0 ^0.0 ^386711040.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.41 ^0.0 ^-0.9 ^979924672.0 ^0.0 ^199368064.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.5 ^0.0 ^-0.02 ^999990464.0 ^0.0 ^4363475.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.42 ^0.0 ^0.86 ^981627136.0 ^0.0 ^-190808832.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.16 ^0.0 ^1.7 ^925540480.0 ^0.0 ^-378648480.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.75 ^0.0 ^2.48 ^833885888.0 ^0.0 ^-551936832.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.2 ^0.0 ^3.17 ^710185472.0 ^0.0 ^-704014592.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.52 ^0.0 ^3.73 ^559193024.0 ^0.0 ^-829037632.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.74 ^0.0 ^4.15 ^386711072.0 ^0.0 ^-922200896.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.9 ^0.0 ^4.41 ^199368080.0 ^0.0 ^-979924672.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.02 ^0.0 ^4.5 ^4363419.0 ^0.0 ^-999990464.0 0.00000000025 0 force @a[distance=..64,tag=ShowParticles]

