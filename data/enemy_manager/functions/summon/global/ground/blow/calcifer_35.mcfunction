##############################
### カルシファー召喚 - Global Ground Blow
##############################

summon minecraft:villager ~ ~1 ~ {Health:0f,DeathTime:19s,Passengers:[{id:"magma_cube",CustomName:"\"カルシファー\"",Tags:["BlockPlacer","Fire"],Size:1,Silent:true,DeathLootTable:"loot_manager:empty",AbsorptionAmount:1500f,Attributes:[{Name:"generic.knockbackResistance",Base:0.6d},{Name:"generic.followRange",Base:32d}],ActiveEffects:[{Id:1b,Amplifier:8b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"area_effect_cloud",Tags:["Cargo"],Duration:99,Effects:[{Id:12b,Amplifier:127b,Duration:1}],Particle:"flame",Radius:0.9f}]}]}
