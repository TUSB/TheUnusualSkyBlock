##############################
### ストンピング召喚 - Event  
##############################

execute if entity @a[distance=..32,gamemode=!creative,gamemode=!spectator] if entity @s[nbt={OnGround:1b}] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block soul_sand",CustomName:"\"ストンピング\"",Duration:10,WaitTime:1,Radius:0.5f,RadiusPerTick:0.6f,ReapplicationDelay:0,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:false},{Id:2b,Amplifier:5b,Duration:100,ShowParticles:false},{Id:25b,Amplifier:80b,Duration:3,ShowParticles:false}]}
execute if entity @a[distance=..32,gamemode=!creative,gamemode=!spectator] if entity @s[nbt={OnGround:1b}] run playsound minecraft:entity.wither.break_block master @a[distance=..32] ~ ~ ~ 1 0.3 0.5
