##############################
### セキュリティーキャリアー・デュアル召喚 - Global Sky Summon
##############################

summon minecraft:villager ~ ~1 ~ {DeathTime:19s,Health:0f,Passengers:[{id:"minecraft:dolphin",Tags:["CooldownRequired","Swim","InAir","InWater","InLava","Vertical","FacingPlayer"],Invulnerable:true,Silent:true,PortalCooldown:80s,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifer:127b,Duration:2147483647}],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.1,UUIDLeast:0l}]}],Passengers:[{id:"minecraft:firework_rocket",LifeTime:100,Passengers:[{id:"minecraft:silverfish",NoGravity:true,Silent:true,Invulnerable:true,CustomName:"{\"text\":\"ナビゲーター\"}",Tags:["Swim","InAir","InWater","InLava","FacingPlayer","Horizontal","Vehicle","Anchored"],ActiveEffects:[{Id:14b,Amplifer:127b,Duration:2147483647}],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.02d,UUIDLeast:0l}]},{Name:"generic.followRange",Base:0d}],Passengers:[{id:"minecraft:ghast",DeathLootTable:"loot_manager:empty",Tags:["Anchor"],NoAI:true,Silent:true,AbsorptionAmount:2500f,CustomName:"{\"text\":\"セキュリティーキャリアー・デュアル\",\"color\":\"red\",\"bold\":true}"},{id:"minecraft:spawner_minecart",Delay:200s,MaxSpawnDelay:120s,MinSpawnDelay:60s,SpawnCount:1s,SpawnRange:3s,RequiredPlayerRange:64s,MaxNearbyEntities:64s,Invulnerable:true,Tags:["Cargo"],SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:area_effect_cloud",Particle:"minecraft:squid_ink",CustomName:"\"セキュリティーコア・デュアル召喚\"",Tags:["CooldownRequired","CallOnFin","Global","Ground","Summon","Security","CoreDual"],PortalCooldown:2,Duration:99,Radius:0.01f}}]}]}]}]}]}
