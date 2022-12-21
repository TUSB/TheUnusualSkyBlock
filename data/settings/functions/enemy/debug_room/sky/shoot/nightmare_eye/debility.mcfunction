#Function
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator,sort=nearest] minecraft:invisibility 1 11
particle minecraft:dust 0.047 0.047 0.227 2 ~ ~ ~ 1 1 1 0 20
particle crit ~ ~ ~ 0.5 0.5 0.5 0 20
particle damage_indicator ~ ~ ~ 0.5 0.5 0.5 0 20
playsound item.trident.thunder master @a[distance=..32] ~ ~ ~ 1.0 1.0 0.1
