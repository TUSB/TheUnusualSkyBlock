##############################
### ラヴァージボム召喚 - Event  
##############################

execute at @a[distance=..16,gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ anchored feet run function calc_manager:check/sight

execute if score $BlockThickness Global matches 0 anchored eyes positioned ^ ^ ^ anchored feet facing entity @a[distance=..16,gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] eyes run summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:zombie",CustomName:"\"ラヴァージボム\"",AbsorptionAmount:100f,Silent:true,DeathTime:19s,IsBaby:true,PortalCooldown:200,Air:50s,DeathLootTable:"loot_manager:x",DeathLootTableSeed:40030,Tags:["WeakPoint","WeakToFire","TickingRequired","RandomRotation","Direction","CallOnTimeOut","Event","RavageBomb"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.05d,UUIDLeast:0l}]},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:100b,Duration:4,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:0s}]}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"ラヴァージボム\"",Particle:"minecraft:flame",Tags:["Cargo"],Duration:99,Radius:0.01f,RadiusPerTick:0f}]}]}

execute if score $BlockThickness Global matches 0 run playsound minecraft:entity.witch.throw master @a[distance=..16,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 2 0 1
