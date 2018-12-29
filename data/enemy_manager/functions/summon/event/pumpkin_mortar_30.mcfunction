##############################
### パンプキンモータ召喚 - Event  
##############################

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:zombie",CustomName:"\"Grumm\"",AbsorptionAmount:1f,Silent:true,IsBaby:true,PortalCooldown:100,Air:100s,DeathLootTable:"minecraft:empty",DeathLootTableSeed:10010,Tags:["TickingRequired","Swim","InAir","Homing","Homing4","HomingHorizontal","RandomRotation","Direction","HasSkill","CallOnDeath","Event","StardustBomb"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.05d,UUIDLeast:0l}]},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:100b,Duration:4,ShowParticles:false}],ArmorItems:[{},{},{},{tag:{Enchantments:[{id:"minecraft:protection",lvl:0s}]},id:"minecraft:pumpkin",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"パンプキンモータ\"",Particle:"minecraft:flame",Tags:["Cargo"],Duration:99,Radius:0.01f,RadiusPerTick:0f}]}]}
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 2 0.7 1
