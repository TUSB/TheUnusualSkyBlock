##############################
### スライムボール召喚 - Event  
##############################

execute if entity @a[distance-..16,gamemode=!creative,gamemode=!spectator,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Tags:["AimOnInit","TickingRequired"],Air:200s,PortalCooldown:200s,NoGravity:true,Passengers:[{id:"minecraft:area_effect_cloud",Duration:40,Radius:0.5f,Particle:"minecraft:item minecraft:slime_ball",Tags:["Cargo"]},{id:"minecraft:area_effect_cloud",Duration:40,Radius:0.5f,Particle:"minecraft:item minecraft:slime_ball",Tags:["Cargo"]},{id:"minecraft:area_effect_cloud",Duration:40,Radius:1.5f,CustomName:"\"スライムビートル\"",Particle:"minecraft:block minecraft:air",Tags:["Cargo"],Effects:[{Id:7b,Duration:1,Amplifier:1b}]}]}
