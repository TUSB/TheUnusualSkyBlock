#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,tag=!Unmoved,sort=furthest,team=Friendly,distance=..5.0,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..5.0,limit=3] @s
effect give @a[distance=..5.0,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.005
particle witch ^0.0 ^0.0 ^3.92 ^0.0 ^1000000000.0 ^3.92 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^3.92 ^0.0 ^-1000000000.0 ^3.92 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-3.92 ^-0.0 ^1000000000.0 ^-3.92 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-3.92 ^-0.0 ^-1000000000.0 ^-3.92 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.005
particle smoke ^0.75 ^0.0 ^3.87 ^-190809008.0 ^0.0 ^-981627200.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.49 ^0.0 ^3.64 ^-378648608.0 ^0.0 ^-925540416.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.17 ^0.0 ^3.28 ^-551936960.0 ^0.0 ^-833885760.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.77 ^0.0 ^2.8 ^-704014720.0 ^0.0 ^-710185280.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.26 ^0.0 ^2.2 ^-829037568.0 ^0.0 ^-559192896.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.63 ^0.0 ^1.52 ^-922200960.0 ^0.0 ^-386711008.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.86 ^0.0 ^0.79 ^-979924672.0 ^0.0 ^-199367920.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.94 ^0.0 ^0.02 ^-999990464.0 ^0.0 ^-4363284.5 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.87 ^0.0 ^-0.75 ^-981627136.0 ^0.0 ^190808992.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.64 ^0.0 ^-1.49 ^-925540480.0 ^0.0 ^378648640.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.28 ^0.0 ^-2.17 ^-833885760.0 ^0.0 ^551937024.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.8 ^0.0 ^-2.77 ^-710185408.0 ^0.0 ^704014720.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.2 ^0.0 ^-3.26 ^-559192896.0 ^0.0 ^829037568.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.52 ^0.0 ^-3.63 ^-386710976.0 ^0.0 ^922200960.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.79 ^0.0 ^-3.86 ^-199367968.0 ^0.0 ^979924672.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.02 ^0.0 ^-3.94 ^-4363388.0 ^0.0 ^999990528.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.75 ^0.0 ^-3.87 ^190808928.0 ^0.0 ^981627136.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.49 ^0.0 ^-3.64 ^378648608.0 ^0.0 ^925540544.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.17 ^0.0 ^-3.28 ^551936896.0 ^0.0 ^833885824.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.77 ^0.0 ^-2.8 ^704014592.0 ^0.0 ^710185472.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.26 ^0.0 ^-2.2 ^829037568.0 ^0.0 ^559193024.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.63 ^0.0 ^-1.52 ^922200960.0 ^0.0 ^386711104.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.86 ^0.0 ^-0.79 ^979924672.0 ^0.0 ^199368080.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.94 ^0.0 ^-0.02 ^999990464.0 ^0.0 ^4363475.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.87 ^0.0 ^0.75 ^981627136.0 ^0.0 ^-190808800.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.64 ^0.0 ^1.49 ^925540480.0 ^0.0 ^-378648416.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.28 ^0.0 ^2.17 ^833885888.0 ^0.0 ^-551936832.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.8 ^0.0 ^2.77 ^710185536.0 ^0.0 ^-704014592.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.2 ^0.0 ^3.26 ^559193024.0 ^0.0 ^-829037504.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.52 ^0.0 ^3.63 ^386711072.0 ^0.0 ^-922200832.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.79 ^0.0 ^3.86 ^199368064.0 ^0.0 ^-979924736.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.02 ^0.0 ^3.94 ^4363411.0 ^0.0 ^-999990464.0 0.00000000019 0 force @a[distance=..64,tag=ShowParticles]

