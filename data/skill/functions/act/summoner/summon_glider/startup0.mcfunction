##############################
### サモンＥ：グライダー滑空
##############################

tag @s add Glided
#滑走路の設置
execute rotated ~ 0 positioned ^ ^ ^ run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[Skill,GliderRunway,CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^1 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[Skill,GliderRunway,CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^2 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[Skill,GliderRunway,CooldownRequired],DeathLootTable:"minecraft:empty"}
execute rotated ~ 0 positioned ^ ^ ^3 run summon minecraft:shulker ~ ~-1.01 ~ {ActiveEffects:[{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],NoAI:true,PortalCooldown:5,Silent:true,Tags:[Skill,GliderRunway,CooldownRequired],DeathLootTable:"minecraft:empty"}
data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:2d}]}
#演出
function makeup:skill/act/summoner/summon_glider/startup0
