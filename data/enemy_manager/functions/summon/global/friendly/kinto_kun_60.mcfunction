##############################
### キント君召喚
##############################

summon minecraft:experience_orb ~ ~1 ~ {Age:6000s,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"minecraft:dust 1 1 1 3",Radius:3f,Duration:1,Passengers:[{id:"minecraft:silverfish",CustomName:"\"照準\"",Invulnerable:true,Silent:true,PortalCooldown:200,Air:99s,DeathLootTable:"minecraft:empty",DeathLootTableSeed:6180,Tags:["AimingPlayer","Direction","CooldownRequired","Swim","InWater","InLava","InAir"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.1d,UUIDLeast:0l}]},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:2b,Duration:120,ShowParticles:false},{Id:28b,Amplifier:0b,Duration:999,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:happy_villager",Radius:0.001f,Duration:2000000}]}]},{id:"minecraft:area_effect_cloud",Particle:"minecraft:block minecraft:air",Radius:0.001f,Duration:60,Passengers:[{id:"minecraft:silverfish",CustomName:"\"キント君\"",Invulnerable:true,Silent:true,PortalCooldown:250,Air:99s,DeathLootTable:"minecraft:empty",DeathLootTableSeed:6180,Tags:["AimingPlayer","Direction","CooldownRequired","Swim","InWater","InLava","InAir"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.1d,UUIDLeast:0l}]},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:2b,Duration:120,ShowParticles:false},{Id:28b,Amplifier:0b,Duration:999,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:dust 1 1 1 3",Radius:1.5f,Duration:2000000,Effects:[{Id:6b,Amplifier:127b,Duration:1},{Id:7b,Amplifier:127b,Duration:1},{Id:21b,Amplifier:0b,Duration:1000000},{Id:28b,Amplifier:127b,Duration:200}]},{id:"minecraft:boat",CustomName:"\"キント君\"",Invulnerable:true,Type:"birch",PortalCooldown:245,Air:99s,FallDistance:180f,Tags:["Projectile","AimingPlayer","Direction","CooldownRequired"]}]}]}]}
