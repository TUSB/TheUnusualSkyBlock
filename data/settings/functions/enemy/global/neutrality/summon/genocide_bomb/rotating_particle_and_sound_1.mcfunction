#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=random,team=Friendly,distance=0.01..16,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=random,distance=0.01..16,limit=3] @s
effect give @a[distance=..4,gamemode=!creative,gamemode=!spectator,sort=nearest] minecraft:blindness 15 1 true
# rotation_3.001
particle witch ^0.0 ^0.0 ^2.52 ^0.0 ^1000000000.0 ^2.52 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^2.52 ^0.0 ^-1000000000.0 ^2.52 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-2.52 ^-0.0 ^1000000000.0 ^-2.52 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-2.52 ^-0.0 ^-1000000000.0 ^-2.52 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.001
particle smoke ^0.48 ^0.0 ^2.47 ^-190809008.0 ^0.0 ^-981627200.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.95 ^0.0 ^2.33 ^-378648640.0 ^0.0 ^-925540480.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.39 ^0.0 ^2.1 ^-551937024.0 ^0.0 ^-833885824.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.77 ^0.0 ^1.79 ^-704014720.0 ^0.0 ^-710185344.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.09 ^0.0 ^1.41 ^-829037632.0 ^0.0 ^-559192960.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.32 ^0.0 ^0.97 ^-922200960.0 ^0.0 ^-386710976.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.47 ^0.0 ^0.5 ^-979924672.0 ^0.0 ^-199367888.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.52 ^0.0 ^0.01 ^-999990464.0 ^0.0 ^-4363270.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.47 ^0.0 ^-0.48 ^-981627200.0 ^0.0 ^190809008.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.33 ^0.0 ^-0.95 ^-925540544.0 ^0.0 ^378648640.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.1 ^0.0 ^-1.39 ^-833885760.0 ^0.0 ^551936896.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.79 ^0.0 ^-1.77 ^-710185408.0 ^0.0 ^704014720.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.41 ^0.0 ^-2.09 ^-559192960.0 ^0.0 ^829037632.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.97 ^0.0 ^-2.32 ^-386711040.0 ^0.0 ^922201024.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.5 ^0.0 ^-2.47 ^-199367968.0 ^0.0 ^979924672.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.01 ^0.0 ^-2.52 ^-4363373.0 ^0.0 ^999990464.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.48 ^0.0 ^-2.47 ^190808944.0 ^0.0 ^981627200.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.95 ^0.0 ^-2.33 ^378648544.0 ^0.0 ^925540544.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.39 ^0.0 ^-2.1 ^551936896.0 ^0.0 ^833885824.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.77 ^0.0 ^-1.79 ^704014592.0 ^0.0 ^710185408.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.09 ^0.0 ^-1.41 ^829037568.0 ^0.0 ^559192960.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.32 ^0.0 ^-0.97 ^922200896.0 ^0.0 ^386711072.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.47 ^0.0 ^-0.5 ^979924736.0 ^0.0 ^199368096.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.52 ^0.0 ^-0.01 ^999990400.0 ^0.0 ^4363477.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.47 ^0.0 ^0.48 ^981627200.0 ^0.0 ^-190808848.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.33 ^0.0 ^0.95 ^925540608.0 ^0.0 ^-378648416.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.1 ^0.0 ^1.39 ^833885952.0 ^0.0 ^-551936896.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.79 ^0.0 ^1.77 ^710185408.0 ^0.0 ^-704014592.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.41 ^0.0 ^2.09 ^559193024.0 ^0.0 ^-829037504.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.97 ^0.0 ^2.32 ^386711072.0 ^0.0 ^-922200896.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.5 ^0.0 ^2.47 ^199368080.0 ^0.0 ^-979924672.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.01 ^0.0 ^2.52 ^4363414.5 ^0.0 ^-999990464.0 0.00000000005 0 force @a[distance=..64,tag=ShowParticles]

