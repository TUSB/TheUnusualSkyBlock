particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0 60 force @a[tag=ShowParticles]
execute facing entity @e[tag=Enemy,distance=4..7,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^2 0.2 0.2 0.2 0 20 force @a[tag=ShowParticles]
execute if entity @s[scores={Level=2..4}] facing entity @e[tag=Enemy,distance=7..15,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^4 0.2 0.2 0.2 0 20 force @a[tag=ShowParticles]
execute if entity @s[scores={Level=3..4}] facing entity @e[tag=Enemy,distance=11..25,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^7 0.2 0.2 0.2 0 20 force @a[tag=ShowParticles]
execute if entity @s[scores={Level=4}] facing entity @e[tag=Enemy,distance=16..35,limit=1,sort=nearest] feet run particle minecraft:crit ^ ^1 ^11 0.2 0.2 0.2 0 20 force @a[tag=ShowParticles]
playsound minecraft:entity.arrow.hit master @a[distance=..48] ~ ~ ~ 1 0.5
