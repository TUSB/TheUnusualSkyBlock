##############################
### サモンＥ：グライダー滑空
##############################

tag @s add Glided
execute rotated ~ 0 positioned ^ ^ ^ run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^1 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^2 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^3 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[CooldownRequired],DeathLootTable:"minecraft:empty"}
data merge entity @s {Attributes:[{Name:"generic.movementSpeed",Base:2d}]}

###---演出---Start
playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 2 1
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 2 0.5
particle minecraft:totem_of_undying ^ ^ ^2 0 0 0 1 30
###---演出---End
