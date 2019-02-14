##############################
### フレイムバースト召喚 - Event  
##############################

playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 3 0 
playsound minecraft:entity.blaze.ambient master @a[distance=..32] ~ ~ ~ 1 0 0.3 
particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.4 30 force @a[tag=ShowParticles] 
particle minecraft:flame ~ ~0.5 ~ 0.1 3.5 0.1 0.2 30 force @a[tag=ShowParticles] 
particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 0.2 5 force @a[tag=ShowParticles] 
particle minecraft:dust 100000000 10000000 0 3 ~ ~0.5 ~ 1.7 1.7 1.7 0.7 100 force @a[tag=ShowParticles] 
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:flame",Duration:60,Radius:0.1f,RadiusPerTick:0.05f,WaitTime:25,ReapplicationDelay:0,Effects:[{Id:14b,Amplifier:3b,Duration:1}],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"フレイムバースト\"",Particle:"minecraft:block minecraft:air",Duration:15,Radius:0.5f,RadiusPerTick:0.2f,ReapplicationDelay:1,Effects:[{Id:7b,Amplifier:3b,Duration:1},{Id:14b,Amplifier:123b,Duration:1}]}]}
