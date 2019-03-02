##############################
### 死天召喚
##############################

tellraw @a[distance=..32] [{"selector":"@s"},{"text":"は死天召喚を唱えた！","color":"white"}]
playsound minecraft:entity.evoker.prepare_summon master @a[distance=..32] ~ ~ ~ 1 2
summon minecraft:spawner_minecart ~ ~ ~ {NoGravity:true,Invulnerable:true,CustomDisplayTile:true,DisplayOffset:0,SpawnCount:1s,SpawnRange:3s,Delay:0s,MinSpawnDelay:0s,MaxSpawnDelay:0s,MaxNearbyEntities:32s,RequiredPlayerRange:32s,CustomName:"{\"text\":\"ホワイトスポナー\",\"color\":\"white\"}",Tags:["CooldownRequired"],PortalCooldown:5s,DisplayState:{Name:"minecraft:iron_block"},SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:area_effect_cloud",Duration:10,Radius:0f,Particle:"minecraft:block minecraft:air",Tags:["Spawn","Global","Other","Blow","Riderrelative","WWhiteAttacker"]}},{Weight:1,Entity:{id:"minecraft:area_effect_cloud",Duration:10,Radius:0f,Particle:"minecraft:block minecraft:air",Tags:["Spawn","Global","Other","Blow","Riderrelative","WWhiteShooter"]}}]}
