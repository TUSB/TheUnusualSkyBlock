##############################
### ゴブリンアーチャー召喚 - Global Ground Blow
##############################

summon minecraft:spawner_minecart ~ ~1 ~ {SpawnCount:1s,SpawnRange:2s,Delay:0s,MinSpawnDelay:0s,MaxSpawnDelay:0s,MaxNearbyEntities:32s,RequiredPlayerRange:64s,Tags:["CooldownRequired"],PortalCooldown:5s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:area_effect_cloud",CustomName:"\"ゴブリンアーチャー召喚\"",Particle:"minecraft:squid_ink",Duration:99,Radius:0.1f,Tags:["TickingRequired","CallOnFin","Global","Ground","Summon","GoblinArcherSingle"],PortalCooldown:2}}]}
