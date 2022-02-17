
execute at @s if entity @e[dy=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^3 if entity @e[dy=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^4 if entity @e[dy=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^3 if entity @e[dy=2,tag=Mob,limit=1] positioned as @s run particle minecraft:item minecraft:netherrack ~ ~1.5 ~ 0.1 0.2 0.2 0.05 5 force @a[tag=ShowParticles]
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^4 if entity @e[dy=2,tag=Mob,limit=1] positioned as @s run particle minecraft:item minecraft:netherrack ~ ~1.5 ~ 0.1 0.2 0.2 0.05 5 force @a[tag=ShowParticles]
