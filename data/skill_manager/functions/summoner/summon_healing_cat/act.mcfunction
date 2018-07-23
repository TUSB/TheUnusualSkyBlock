##############################
### サモンＥ：ヒーリングキャット
##############################

execute if score @s SupportSkill matches 62051 run summon minecraft:ocelot ~ ~ ~ {Tags:[CooldownRequired],PortalCooldown:150,Invulnerable:true,CustomName:"[\"ぬこ\"]",CustommNameVisible:true,Passengers:[{id:"minecraft:area_effect_cloud",Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:heart",Age:0,WaitTime:20,ReapplicationDelay:0,Duration:130,Effects:[{Id:6d,Duration:1,Amplifier:0b,ShorParticles:false}]}]}
execute if score @s SupportSkill matches 62052 run summon minecraft:ocelot ~ ~ ~ {Tags:[CooldownRequired],PortalCooldown:300,Invulnerable:true,CustomName:"[\"ぬこ\"]",CustommNameVisible:true,Attributes:[{Name:"generic.movementSpeed",Base:0.1d}],Passengers:[{id:"minecraft:area_effect_cloud",Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:heart",Age:0,WaitTime:20,ReapplicationDelay:0,Duration:280,Effects:[{Id:6d,Duration:1,Amplifier:0b,ShorParticles:false}]}]}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
