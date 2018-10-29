##############################
### ソルジャーフラッガー ライム召喚
##############################

# give @p minecraft:leather_chestplate{Unbreakable:true,display:{color:8108827}} 1
# give @p minecraft:leather_leggings{Unbreakable:true,display:{color:8108827}} 1
# give @p minecraft:leather_boots{Unbreakable:true,display:{color:8108827}} 1
# give @p minecraft:black_banner{BlockEntityTag:{Patterns:[{Color:5,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:5,Pattern:"cbo"},{Color:5,Pattern:"cre"},{Color:5,Pattern:"tt"},{Color:5,Pattern:"bts"}]}}

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:husk",CustomName:"\"ソルジャーフラッガー ライム\"",AbsorptionAmount:3400f,Silent:true,Attributes:[{Name:"generic.movementSpeed",Base:0.15d},{Name:"generic.attackDamage",Base:20d},{Name:"generic.knockbackResistance",Base:0.4d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:3s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:8108827}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:8108827}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:8108827}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:5,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:5,Pattern:"cbo"},{Color:5,Pattern:"cre"},{Color:5,Pattern:"tt"},{Color:5,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:spawner_minecart",Tags:["Cargo"],Invulnerable:true,SpawnCount:1s,SpawnRange:0s,MaxNearbyEntities:32s,Delay:-1s,MinSpawnDelay:80s,MaxSpawnDelay:150s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:lime_wool"},CustomDisplayTile:1b,DisplayOffset:0,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:spawner_minecart",Tags:["CooldownRequired"],PortalCooldown:20,NoGravity:true,Invulnerable:true,MinSpawnDelay:1s,MaxSpawnDelay:1s,SpawnCount:1s,SpawnRange:0s,Delay:-1s,RequiredPlayerRange:32s,MaxNearbyEntities:32s,CustomDisplayTile:1b,DisplayOffset:16,DisplayState:{Name:"minecraft:fire"},SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:experience_orb",Age:6000s,Passengers:[{id:"minecraft:vex",CustomName:"\"スプライトライム\"",AbsorptionAmount:120f,NoGravity:true,Tags:["BoundPlayer","Swim","InAir","AimingPlayer","TickingRequired"],Air:30s,PortalCooldown:20,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.24d,UUIDLeast:0l}]},{Name:"generic.followRange",Base:0d}],Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:dust 0 1 0 2",Duration:60,Radius:0.03f},{id:"minecraft:area_effect_cloud",Tags:["Cargo"],CustomName:"\"スプライトライム\"",Particle:"minecraft:block minecraft:air",Duration:60,Radius:1.65f,WaitTime:1,Effects:[{Id:4b,Amplifier:5b,Duration:600},{Id:7b,Amplifier:1b,Duration:1}]}]}]}}]}}]}]}]}
