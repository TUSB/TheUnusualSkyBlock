##############################
### Fボムサモナー召喚 - Event  
##############################

execute facing entity @a[distance=..16,gamemode=!spectator,gamemode=!creative,sort=nearest,limit=1] eyes run summon firework_rocket ~ ~1 ~ {CustomName:"\"Fボムサモナー\"",Life:0s,LifeTime:20s,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Type:0b,Colors:[I;16711680,16746496]}]}}},Passengers:[{id:"minecraft:spawner_minecart",CustomName:"\"Fボムサモナー\"",Tags:["CooldownRequired"],PortalCooldown:21,DisplayState:{Name:"minecraft:fire"},Invulnerable:true,CustomDisplayTile:true,DisplayOffset:8,MaxNearbyEntities:3s,RequiredPlayerRange:32s,SpawnCount:1s,Delay:20s,MinSpawnDelay:20s,MaxSpawnDelay:20s,SpawnRange:1s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:area_effect_cloud",CustomName:"\"Fボムマザー\"",Duration:0,Radius:0.0f,Particle:"minecraft:block minecraft:air",Passengers:[{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[0.0d,0.1d,0.5d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[0.35d,0.1d,0.35d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[0.5d,0.1d,0.0d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[0.35d,0.1d,-0.35d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[0.0d,0.1d,-0.5d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[-0.35d,0.1d,-0.35d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[-0.5d,0.1d,0.0d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]},{id:"minecraft:arrow",CustomName:"\"ファイヤーボム\"",Color:-1,life:1200s,Motion:[-0.35d,0.1d,0.35d],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ファイヤーボム\"",Duration:35,Radius:0.01f,Particle:"minecraft:entity_effect",Color:8978312,Passengers:[{id:"minecraft:creeper",CustomName:"\"ファイヤーボム\"",NoAI:true,ignited:true,Invulnerable:true,Fuse:40s,ExplosionRadius:1b},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DF\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AF\"",life:1200s,Color:16711680,Tags:["Fire"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]},{id:"minecraft:chicken",CustomName:"\"Fボムパーツ・DL\"",ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b,ShowParticle:0b},{Id:11b,Duration:39,Amplifier:127b,ShowParticle:0b}],DeathLootTable:"loot_manager:x",Silent:true,Health:1.0f,Passengers:[{id:"minecraft:arrow",CustomName:"\"Fボムパーツ・AL\"",life:1200s,Color:16727299,Tags:["FlowingLava"]}]}]}]}]}}]}]}
