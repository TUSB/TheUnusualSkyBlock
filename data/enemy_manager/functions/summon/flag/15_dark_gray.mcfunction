##############################
### ジェネラルフラッガー ネガ召喚
##############################

# AECを試す。

# give @p minecraft:leather_chestplate{Unbreakable:true,display:{color:5396567}} 
# give @p minecraft:leather_leggings{Unbreakable:true,display:{color:5396567}} 1
# give @p minecraft:leather_boots{Unbreakable:true,display:{color:5396567}} 1
# give @p minecraft:white_banner{BlockEntityTag:{Patterns:[{Color:7,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:7,Pattern:"cbo"},{Color:7,Pattern:"cre"},{Color:7,Pattern:"tt"},{Color:7,Pattern:"bts"}]}}

# {id:"minecraft:area_effect_cloud",Particle:"minecraft:block minecraft:air",Tags:["Cargo","GunPowder"],Radius:3f,Duration:999,Passengers:[{id:"minecraft:potion",CustomName:"\"ネガリターナー\"",NoGravity:true,PortalCooldown:320,Tags:["TickingRequired","Direction","Bullet","BulletRandom"],Air:80s,FallDistance:10010f,Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:3881787,CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:60}]}}}]}

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:husk",CustomName:"\"ジェネラルフラッガー ネガ\"",AbsorptionAmount:11400f,Silent:true,Tags:["TowardPlayer","Swim","InAir","InLava","Step","Front","Up","HasSkill","Teleport"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0d,UUIDLeast:0l},{Amount:6d,UUIDLeast:1l},{Amount:2.2d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:20d,UUIDLeast:0l},{Amount:50d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:"generic.movementSpeed",Base:0.29d},{Name:"generic.attackDamage",Base:56d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:8s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:5396567}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:5396567}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:5396567}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:7,Pattern:"gra"},{Color:0,Pattern:"gru"},{Color:7,Pattern:"cbo"},{Color:7,Pattern:"cre"},{Color:7,Pattern:"tt"},{Color:7,Pattern:"bts"}]}},id:"minecraft:white_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:spawner_minecart",Tags:["Cargo"],Invulnerable:true,SpawnCount:1s,SpawnRange:3s,MaxNearbyEntities:32s,Delay:-1s,MinSpawnDelay:80s,MaxSpawnDelay:320s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:gray_wool"},CustomDisplayTile:true,DisplayOffset:0,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:experience_orb",Age:6000s,Passengers:[{id:"minecraft:endermite",Silent:true,NoGravity:true,PortalCooldown:60,Tags:["TickingRequired","AroundPlayer","Swim","InAir","HasSkill","Satelite"],Air:20s,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.16d,UUIDLeast:0l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:60d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["TickingRequired"],PortalCooldown:60,Particle:"minecraft:dust 5 5 5 1",Radius:0.5f,Duration:100},{id:"minecraft:spawner_minecart",Tags:["TickingRequired"],PortalCooldown:60,NoGravity:true,Invulnerable:true,SpawnCount:1s,SpawnRange:1s,MaxNearbyEntities:32s,Delay:-1s,MinSpawnDelay:2s,MaxSpawnDelay:2s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:fire"},CustomDisplayTile:true,DisplayOffset:3,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:experience_orb",Age:6000s,Passengers:[{id:"minecraft:shulker",CustomName:"\"ネガティブウォール\"",NoAI:true,AbsorptionAmount:40f,Color:7b,PortalCooldown:200,Tags:["TickingRequired"],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:true,Enchantments:[{id:"minecraft:thorns",lvl:40s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:"minecraft:silverfish",Invulnerable:true,Silent:true,NoGravity:true,AbsorptionAmount:9f,Tags:["Cargo","GunPowder"],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000,ShowParticles:false}],Passengers:[{id:"minecraft:potion",CustomName:"\"ネガリターナー\"",NoGravity:true,PortalCooldown:320,Tags:["TickingRequired","Direction","Bullet","BulletRandom"],Air:80s,FallDistance:10010f,Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:3881787,CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:60}]}}}]}]}]}}]}]}]}}]}]}]}





