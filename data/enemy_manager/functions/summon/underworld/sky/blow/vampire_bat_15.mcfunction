##############################
### 吸血コウモリ召喚 - Underworld Sky Blow
##############################

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:bat",CustomName:"\"吸血コウモリ\"",AbsorptionAmount:100f,PortalCooldown:1600,Tags:["TickingRequired","FacingPlayer","Swim","InAir","Step","Front","HasSkill","SelfHealLv2"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.07d,UUIDLeast:0l},{Amount:3.6d,UUIDLeast:1l},{Amount:5d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:20d,UUIDLeast:0l},{Amount:30d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:dripping_lava",Duration:99,Radius:0.5f,Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"吸血コウモリ\"",Tags:["Cargo"],Particle:"minecraft:block minecraft:air",Duration:99,Radius:1.5f,Effects:[{Id:7b,Amplifier:1b,Duration:1},{Id:9b,Amplifier:0b,Duration:100},{Id:15b,Amplifier:0b,Duration:23},{Id:18b,Amplifier:5b,Duration:100}]}]}]}]}
