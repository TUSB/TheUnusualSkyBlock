##############################
### ゴースト召喚 - Global Sky Blow
##############################

summon minecraft:villager ~ ~1 ~ {DeathTime:19s,Health:0f,Passengers:[{id:"minecraft:vex",Invulnerable:true,Silent:true,Tags:["Vehicle","Anchor","Swim","InAir","Homing","Homing8"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.05d,UUIDLeast:0l}]},{Name:generic.attackDamage,Base:10d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Passengers:[{id:"minecraft:stray",DeathLootTable:"loot_manager:empty",Tags:["HasSkill","BlinkLv1","Anchored","TickingRequired"],PortalCooldown:600s,AbsorptionAmount:10f,Silent:true,CustomName:"{\"text\":\"ゴースト\"}",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Attributes:[{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:10d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:generic.attackDamage,Base:0d},{Name:"generic.followRange",Base:0d}]}]}]}
