#Function
playsound block.beacon.activate master @a[distance=..64] ~ ~ ~ 1.0 2.0 0.1
particle composter ~ ~ ~ 0.5 0.5 0.5 0.5 20 force 
effect give @e[tag=Enemy,type=minecraft:wither_skeleton,distance=..3] minecraft:instant_damage 1 2 true
