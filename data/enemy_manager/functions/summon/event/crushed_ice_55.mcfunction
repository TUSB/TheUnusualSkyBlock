##############################
### アイスバーン召喚 - Event  
##############################

playsound minecraft:block.glass.break master @a[distance=..32] ~ ~ ~ 0.5 0 0.1 
particle minecraft:item minecraft:ice ~ ~0.5 ~ 0.5 0.5 0.5 0.35 50 force @a[tag=ShowParticles] 
effect clear @a[gamemode=!creative,distance=..5] minecraft:slowness 
execute as @a[distance=..5,gamemode=!creative,gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~-1 ~ {Particle:"minecraft:block minecraft:air",CustomName:"\"クラッシュアイス\"",Duration:3,Radius:1.5f,ReapplicationDelay:0,Effects:[{Id:1b,Amplifier:30b,Duration:2},{Id:7b,Amplifier:3b,Duration:1}]}
