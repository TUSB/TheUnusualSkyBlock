##############################
### アオリイカの墨召喚 - Event  
##############################

execute facing entity @a[distance=..16,gamemode=!spectator,gamemode=!creative,sort=nearest,limit=1] eyes run summon minecraft:experience_orb ^ ^ ^ {Value:0s,Tags:["Projectile","CooldownRequired","AimOnInit","LateInitializer","Direction"],FallDistance:-10000f,Air:300s,PortalCooldown:25,NoGravity:true,Passengers:[{id:"minecraft:ender_pearl",Tags:["AimOnInit","AimOnInit","LateEntity","TickingRequired"],PortalCooldown:20,Air:100s,NoGravity:true,Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:squid_ink",Duration:99,Radius:0.03f},{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:block minecraft:air",CustomName:"\"アオリイカの墨\"",Duration:99,Radius:1.5f,Effects:[{Id:1b,Amplifier:5b,Duration:5},{Id:7b,Amplifier:0b,Duration:1},{Id:9b,Amplifier:0b,Duration:70},{Id:15b,Amplifier:0b,Duration:23},{Id:17b,Amplifier:127b,Duration:120}]}]}]}
