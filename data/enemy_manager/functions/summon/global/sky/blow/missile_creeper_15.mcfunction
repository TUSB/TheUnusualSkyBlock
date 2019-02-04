##############################
### ミサイルクリーパー召喚 - Global Sky Blow
##############################

summon minecraft:ender_pearl ~ ~2 ~ {Tags:["AimOnInit","CooldownRequired"],PortalCooldown:50s,Invulnerable:true,Air:120s,NoGravity:true,Passengers:[{id:"minecraft:firework_rocket",NoGravity:true,LifeTime:50s},{id:"minecraft:area_effect_cloud",Duration:50,Radius:0.001f,Particle:"minecraft:flame"},{id:"minecraft:creeper",PortalCooldown:50s,AbsorptionAmount:50f,Fuse:50,ignited:true,DeathLootTable:"loot_manager:empty",CustomName:"{\"text\":\"ミサイルクリーパー\"}",Attributes:[{Name:"followRange",Base:0d}]}]}
