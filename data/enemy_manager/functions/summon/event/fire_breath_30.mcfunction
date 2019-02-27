##############################
### ファイアーブレス召喚 - Event  
##############################

summon minecraft:falling_block ~ ~0.5 ~ {Fire:30000s,PortalCooldown:40,Tags:["Projectile","RandomRotation","Direction","CooldownRequired","NeverRemain"],Air:150s,FallDistance:8005f,BlockState:{Name:"minecraft:structure_void"},Time:1,DropItem:false,NoGravity:true,Passengers:[{id:"minecraft:area_effect_cloud",PortalCooldown:40,Tags:["CooldownRequired"],Particle:"minecraft:dust 100000000 10000000 0 3",Duration:99,Radius:0.3f},{id:"minecraft:area_effect_cloud",PortalCooldown:40,Tags:["CooldownRequired"],Particle:"minecraft:block minecraft:air",CustomName:"\"ファイアーブレス\"",Duration:99,Radius:1.55f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:14b,Amplifier:123b,Duration:1}]}]}
playsound minecraft:entity.blaze.shoot master @a[distance=..16,gamemode=!spectator,gamemode=!creative] ~ ~ ~ 1 0 0.5
playsound minecraft:entity.blaze.ambient master @a[distance=..16,gamemode=!spectator,gamemode=!creative] ~ ~ ~ 1 0.55 0.5
