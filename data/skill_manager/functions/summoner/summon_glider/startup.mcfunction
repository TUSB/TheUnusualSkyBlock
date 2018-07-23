##############################
### サモンＥ：グライダー滑空
##############################

tag @s add Glided
execute rotated ~ 0 positioned ^ ^ ^ run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired]}
execute rotated ~ 0 positioned ^ ^ ^1 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired]}
execute rotated ~ 0 positioned ^ ^ ^2 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired]}
execute rotated ~ 0 positioned ^ ^ ^3 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired]}
data merge entity @s {Attributes:[{Name:"generic.movementSpeed",Base:2d}]}
