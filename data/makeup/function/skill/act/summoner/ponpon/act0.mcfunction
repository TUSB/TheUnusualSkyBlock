playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.chicken.egg master @a[distance=..16] ~ ~ ~ 1 1
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] anchored eyes at @s run particle minecraft:heart ^ ^ ^ 0.1 0.1 0.1 0 10 force
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] anchored eyes at @s run particle minecraft:happy_villager ^ ^-1 ^ 0.5 0.5 0.5 0 20 force
