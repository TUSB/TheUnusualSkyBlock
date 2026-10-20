
execute facing entity @e[tag=Enemy,limit=1,sort=nearest,distance=..8] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
playsound minecraft:entity.guardian.death master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.bat.takeoff master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:dust{color:[1f,0f,0.5f],scale:1.5f} ~ ~3 ~ 0.3 2 0.3 1 30 force
