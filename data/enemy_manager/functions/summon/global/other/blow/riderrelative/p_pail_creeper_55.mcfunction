##############################
### ペイルクリーパー召喚 - Global Other Blow
##############################

summon minecraft:villager ~ ~1 ~ {DeathTime:19s,Health:0f,Silent:true,Passengers:[{id:"minecraft:creeper",ExplosionRadius:0b,Fuse:5s,CustomName:"\"ペイルクリーパー\"",Attributes:[{Name:"generic.followRange",Base:48d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.movementSpeed",Base:0.3d}],Silent:true,AbsorptionAmount:100f,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000},{Id:10b,Amplifier:2b,Duration:1200}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:happy_villager",Duration:80,Radius:0.001f},{id:"minecraft:potion",Tags:["TickingRequired"],PortalCooldown:9999,Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionEffects:[{Id:14b,Amplifier:4b,Duration:1},{Id:19b,Amplifier:4b,Duration:200}]}}}]}]}
