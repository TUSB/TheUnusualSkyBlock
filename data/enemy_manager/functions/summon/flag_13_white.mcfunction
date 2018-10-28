##############################
### ジェネラルフラッガー ホワイト召喚
##############################

# give @p minecraft:leather_chestplate{Unbreakable:true,display:{color:15790302}} 1
# give @p minecraft:leather_leggings{Unbreakable:true,display:{color:15790302}} 1
# give @p minecraft:leather_boots{Unbreakable:true,display:{color:15790302}} 1
# give @p minecraft:black_banner{BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:0,Pattern:"cbo"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"tt"},{Color:0,Pattern:"bts"}]}}

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:husk",CustomName:"\"ジェネラルフラッガー ホワイト\"",AbsorptionAmount:9800f,Silent:true,Tags:["TowardPlayer","Swim","InAir","InLava","Step","Front","Up","HasSkill","Teleport"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0d,UUIDLeast:0l},{Amount:6d,UUIDLeast:1l},{Amount:2.2d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:10d,UUIDLeast:0l},{Amount:40d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:"generic.movementSpeed",Base:0.25d},{Name:"generic.attackDamage",Base:60d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:7s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:15790302}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:15790302}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:15790302}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:0,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:0,Pattern:"cbo"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"tt"},{Color:0,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:spawner_minecart",Tags:["Cargo"],Invulnerable:true,SpawnCount:5s,SpawnRange:0s,MaxNearbyEntities:32s,Delay:-1s,MinSpawnDelay:150s,MaxSpawnDelay:250s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:white_wool"},CustomDisplayTile:1b,DisplayOffset:0,SpawnPotentials:[{Weight:1,Entity:{Age:6000s,NoGravity:true,id:"minecraft:experience_orb",Passengers:[{id:"minecraft:endermite",CustomName:"\"ホワイトエンド\"",AbsorptionAmount:200f,Silent:true,NoGravity:true,Air:250s,PortalCooldown:120,Tags:["TickingRequired","RandomRotation","Direction","Vehicle","Homing","Homing4","Swim","InAir","Step","Front"],DeathLootTable:"minecraft:empty",DeathLootTableSeed:5180,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0d,UUIDLeast:0l},{Amount:3d,UUIDLeast:1l},{Amount:4d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:12b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:dust 1 1 1 2",Radius:0.01f,Duration:99},{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:end_rod",Radius:0.01f,Duration:99},{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:block minecraft:air",Radius:1.5f,Duration:99,Effects:[{Id:16b,Amplifier:127b,Duration:5},{Id:14b,Amplifier:1b,Duration:1}]}]}]}}]}]}]}
