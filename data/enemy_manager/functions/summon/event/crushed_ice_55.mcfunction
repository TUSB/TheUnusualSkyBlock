##############################
### アイスバーン召喚 - Event  
##############################

playsound minecraft:block.glass.break master @a[distance=..32] ~ ~ ~ 0.7 0 0.1 
particle minecraft:item minecraft:ice ~ ~0.5 ~ 0.5 0.5 0.5 0.35 20 force @a[tag=ShowParticles] 
effect clear @a[gamemode=!creative,distance=..5] minecraft:slowness 
execute as @a[distance=..5,gamemode=!creative,gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",CustomName:"\"クラッシュアイス\"",Duration:10,Radius:1f,ReapplicationDelay:0,Effects:[{Id:1b,Amplifier:127b,Duration:2},{Id:7b,Amplifier:3b,Duration:1}]}
