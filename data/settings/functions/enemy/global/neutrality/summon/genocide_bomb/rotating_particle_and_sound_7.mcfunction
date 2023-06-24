#Function
# 効果
tp @e[gamemode=!creative,gamemode=!spectator,sort=furthest,team=Friendly,distance=..6.0,limit=3] @s
tp @e[tag=Mob,tag=!Unmoved,sort=furthest,distance=..6.0,limit=3] @s
effect give @a[distance=..6.0,gamemode=!creative,gamemode=!spectator,sort=furthest] minecraft:darkness 15 1 true
# rotation_3.007
particle witch ^0.0 ^0.0 ^5.25 ^0.0 ^1000000000.0 ^5.25 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^0.0 ^0.0 ^5.25 ^0.0 ^-1000000000.0 ^5.25 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-5.25 ^-0.0 ^1000000000.0 ^-5.25 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
particle witch ^-0.0 ^0.0 ^-5.25 ^-0.0 ^-1000000000.0 ^-5.25 0.00000000000 0 force @a[distance=..64,tag=ShowParticles]
# rotation_2.007
particle smoke ^1.0 ^0.0 ^5.15 ^-190809024.0 ^0.0 ^-981627136.0 0.00000000032 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.99 ^0.0 ^4.86 ^-378648640.0 ^0.0 ^-925540480.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.9 ^0.0 ^4.38 ^-551937024.0 ^0.0 ^-833885824.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.7 ^0.0 ^3.73 ^-704014784.0 ^0.0 ^-710185344.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.35 ^0.0 ^2.94 ^-829037632.0 ^0.0 ^-559192960.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.84 ^0.0 ^2.03 ^-922200960.0 ^0.0 ^-386711008.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.14 ^0.0 ^1.05 ^-979924736.0 ^0.0 ^-199367872.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.25 ^0.0 ^0.02 ^-999990464.0 ^0.0 ^-4363295.5 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^5.15 ^0.0 ^-1.0 ^-981627136.0 ^0.0 ^190809008.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.86 ^0.0 ^-1.99 ^-925540480.0 ^0.0 ^378648608.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^4.38 ^0.0 ^-2.9 ^-833885888.0 ^0.0 ^551936960.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^3.73 ^0.0 ^-3.7 ^-710185408.0 ^0.0 ^704014784.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.94 ^0.0 ^-4.35 ^-559192896.0 ^0.0 ^829037568.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^2.03 ^0.0 ^-4.84 ^-386711040.0 ^0.0 ^922200960.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^1.05 ^0.0 ^-5.14 ^-199367984.0 ^0.0 ^979924736.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^0.02 ^0.0 ^-5.25 ^-4363372.0 ^0.0 ^999990464.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.0 ^0.0 ^-5.15 ^190808928.0 ^0.0 ^981627136.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.99 ^0.0 ^-4.86 ^378648544.0 ^0.0 ^925540544.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.9 ^0.0 ^-4.38 ^551936896.0 ^0.0 ^833885824.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.7 ^0.0 ^-3.73 ^704014656.0 ^0.0 ^710185472.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.35 ^0.0 ^-2.94 ^829037568.0 ^0.0 ^559193024.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.84 ^0.0 ^-2.03 ^922200896.0 ^0.0 ^386711072.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.14 ^0.0 ^-1.05 ^979924608.0 ^0.0 ^199368080.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.25 ^0.0 ^-0.02 ^999990464.0 ^0.0 ^4363482.5 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-5.15 ^0.0 ^1.0 ^981627136.0 ^0.0 ^-190808832.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.86 ^0.0 ^1.99 ^925540544.0 ^0.0 ^-378648416.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-4.38 ^0.0 ^2.9 ^833885952.0 ^0.0 ^-551936896.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-3.73 ^0.0 ^3.7 ^710185472.0 ^0.0 ^-704014656.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.94 ^0.0 ^4.35 ^559193024.0 ^0.0 ^-829037504.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-2.03 ^0.0 ^4.84 ^386711040.0 ^0.0 ^-922200832.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-1.05 ^0.0 ^5.14 ^199368032.0 ^0.0 ^-979924672.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]
particle smoke ^-0.02 ^0.0 ^5.25 ^4363411.0 ^0.0 ^-999990464.0 0.00000000033 0 force @a[distance=..64,tag=ShowParticles]

