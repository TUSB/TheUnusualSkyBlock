##############################
### フレイムバースト召喚 - Event  
##############################

playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 0.4 0 0.3 
playsound minecraft:item.bucket.fill_lava master @a[distance=..32] ~ ~ ~ 0.4 0 0.3 
playsound minecraft:entity.shulker.shoot master @a[distance=..32] ~ ~ ~ 0.4 0 0.3 
playsound minecraft:entity.elder_guardian.hurt master @a[distance=..32] ~ ~ ~ 0.4 0 0.3 
particle minecraft:flame ~ ~0.5 ~ 0.2 0.1 0.2 0.15 50 force @a[tag=ShowParticles] 
particle minecraft:flame ~ ~0.5 ~ 0.3 3.5 0.3 0.015 70 force @a[tag=ShowParticles] 
particle minecraft:flame ~ ~0.5 ~ 0.1 2.5 0.1 0.01 50 force @a[tag=ShowParticles] 
particle minecraft:dust 100000000 10000000 0 2 ~ ~0.5 ~ 0.7 0.3 0.7 0.05 30 force @a[tag=ShowParticles] 
particle minecraft:dust 100000000 10000000 0 3 ~ ~0.5 ~ 0.12 2.5 0.12 0.05 70 force @a[tag=ShowParticles] 
particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 0.3 20 force @a[tag=ShowParticles] 
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"minecraft:flame",Duration:20,Radius:1f,RadiusPerTick:0.15f,ReapplicationDelay:0,Effects:[{Id:14b,Amplifier:3b,Duration:1}],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"フレイムバースト\"",Particle:"minecraft:block minecraft:air",Duration:20,Radius:1f,RadiusPerTick:0.15f,ReapplicationDelay:1,Effects:[{Id:7b,Amplifier:3b,Duration:1},{Id:14b,Amplifier:123b,Duration:1}]}]}
