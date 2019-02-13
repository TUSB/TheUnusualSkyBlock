##############################
### アイスバーン召喚 - Event  
##############################

playsound minecraft:block.glass.break master @a[distance=..32] ~ ~ ~ 1 0 0.2
particle minecraft:item minecraft:ice ~ ~0.5 ~ 0.5 0.5 0.5 0.35 150 force @a[tag=ShowParticles]
effect give @a[gamemode=!creative,distance=..5] minecraft:slowness 0 127 true
effect give @a[gamemode=!creative,distance=..5] minecraft:speed 1 30 true
effect give @a[gamemode=!creative,distance=..5] minecraft:instant_damage 1 2 true
