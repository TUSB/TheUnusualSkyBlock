##############################
### 羊スポナー
##############################

summon minecraft:armor_stand ~ ~-0.4999 ~ {CustomName:"{\"text\":\"システムアマスタ\"}",Tags:[Spawner,SpawnerHolder],NoGravity:true,Small:true,Invulnerable:true,Invisible:true,Marker:true,Passengers:[{id:"minecraft:spawner_minecart",CustomName:"{\"text\":\"擬態スポナー\"}",Tags:[Spawner],Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:12,SpawnCount:1s,SpawnRange:4s,MaxNearbyEntities:6s,Delay:-1s,MinSpawnDelay:10s,MaxSpawnDelay:30s,RequiredPlayerRange:20s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:sheep",Tags:[Spawn,Tool,WoolScaffolds],DeathTime:19s,NoAI:true,Silent:true,Invulnerable:true,AbsorptionAmount:99f,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:9999,ShowParticles:false}]}}]}]}
setblock ~ ~ ~ minecraft:spawner{SpawnData:{id:"minecraft:sheep",Color:0},MaxNearbyEntities:0}
