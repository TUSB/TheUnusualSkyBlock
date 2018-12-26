##############################
### 溶岩蟲召喚 - Nether Ground Blow
##############################

summon minecraft:endermite ~ ~1 ~ {ExplosionRadius:-1b,Tags:[FacingPlayer,Swim,InAir,TickingRequired,Vehicle,HasSkill,Interpolator],PortalCooldown:300,Fire:32767s,NoGravity:1b,Invulnerable:1b,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.01d,UUIDLeast:0l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:1d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:generic.attackDamage,Base:0d}],Passengers:[{id:"minecraft:experience_orb",Health:10000,Age:5700s,Passengers:[{id:"minecraft:ender_pearl",Tags:[Cargo],NoGravity:1b,Passengers:[{id:"minecraft:area_effect_cloud",Tags:[Cargo,CallOnFin,Event,TrapBomb],Particle:"minecraft:flame",Radius:0.5f,Duration:300}]}]}]}
