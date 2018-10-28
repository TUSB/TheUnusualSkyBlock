##############################
### ソルジャーフラッガー シアン召喚
##############################

# give @p minecraft:leather_chestplate{Unbreakable:true,display:{color:3647935}} 1
# give @p minecraft:leather_leggings{Unbreakable:true,display:{color:3647935}} 1
# give @p minecraft:leather_boots{Unbreakable:true,display:{color:3647935}} 1
# give @p minecraft:black_banner{BlockEntityTag:{Patterns:[{Color:3,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:3,Pattern:"cbo"},{Color:3,Pattern:"cre"},{Color:3,Pattern:"tt"},{Color:3,Pattern:"bts"}]}}

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:husk",CustomName:"\"ソルジャーフラッガー シアン\"",AbsorptionAmount:5800f,Silent:true,Attributes:[{Name:"generic.movementSpeed",Base:0.17d},{Name:"generic.attackDamage",Base:28d},{Name:"generic.knockbackResistance",Base:0.8d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:4s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:3647935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:3647935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:3647935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:3,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:3,Pattern:"cbo"},{Color:3,Pattern:"cre"},{Color:3,Pattern:"tt"},{Color:3,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:spawner_minecart",Tags:["Cargo"],Invulnerable:true,SpawnCount:1s,SpawnRange:0s,MaxNearbyEntities:32s,Delay:-1s,MinSpawnDelay:80s,MaxSpawnDelay:180s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:light_blue_wool"},CustomDisplayTile:1b,DisplayOffset:0,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:fireball",CustomName:"\"シアングレネード\"",ExplosionPower:0,direction:[0d,0d,0d],Tags:["TickingRequired","AimingPlayer","Vehicle"],Air:320s,PortalCooldown:10,Passengers:[{id:"minecraft:spawner_minecart",Tags:["CooldownRequired"],PortalCooldown:30,NoGravity:true,Invulnerable:true,SpawnCount:2s,SpawnRange:1s,MaxNearbyEntities:64s,Delay:20s,MinSpawnDelay:1s,MaxSpawnDelay:1s,RequiredPlayerRange:48s,DisplayState:{Name:"minecraft:beacon"},CustomDisplayTile:1b,DisplayOffset:8,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:experience_orb",Age:6000s,Passengers:[{id:"minecraft:vex",CustomName:"\"シアングレネード\"",AbsorptionAmount:120f,NoGravity:true,Tags:["BoundPlayer","Swim","InAir","RandomRotation","TickingRequired"],Air:50s,PortalCooldown:10,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.15d,UUIDLeast:0l}]},{Name:"generic.followRange",Base:0d}],Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["Cargo"],Particle:"minecraft:dust 0 1 3 3",Duration:60,Radius:0.03f},{id:"minecraft:area_effect_cloud",Tags:["Cargo"],CustomName:"\"シアングレネード\"",Particle:"minecraft:block minecraft:air",Duration:60,Radius:4.05f,Effects:[{Id:2b,Amplifier:5b,Duration:250},{Id:4b,Amplifier:1b,Duration:250},{Id:7b,Amplifier:3b,Duration:1}]}]}]}}]}]}}]}]}]}
