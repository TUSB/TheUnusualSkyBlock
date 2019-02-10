##############################
### ナイフピエロの投げナイフ召喚 - Event  
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $3 Global

#ランダムパターン1 - 高速ナイフ
execute if score $Random matches 0 run execute scoresummon minecraft:armor_stand ~ ~1 ~ {Tags:["CooldownRequired","LateInitializer"],PortalCooldown:5,Small:true,Invulnerable:true,Invisible:true,DisabledSlots:31,Passengers:[{id:"minecraft:silverfish",DeathTime:19s,CustomName:"\"キラーナイフ\"",Invulnerable:true,NoGravity:true,Silent:true,PortalCooldown:30,Air:60s,Tags:["CooldownRequired","Direction","LateInitializer","LateEntity"],Attributes:[{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:armor_stand",Tags:["CooldownRequired","AimOnInit"],Air:10s,PortalCooldown:30,HandItems:[{id:"minecraft:iron_sword",Count:1b}],Invulnerable:true,Small:true,Invisible:true,DisabledSlots:31,Pose:{RightArm:[-10f,0f,180f]}},{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフ\"",Tags:["Cargo"],Radius:1.5f,Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Duration:99,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:false}]}]}]}

#ランダムパターン2 - 4wayナイフ
execute if score $Random matches 1 run summon minecraft:armor_stand ~ ~1 ~ {Tags:["CooldownRequired","LateInitializer"],PortalCooldown:5,Small:true,Invulnerable:true,Invisible:true,DisabledSlots:31,Passengers:[{id:"minecraft:silverfish",DeathTime:19s,CustomName:"\"キラーナイフ\"",Invulnerable:true,NoGravity:true,Silent:true,PortalCooldown:30,Air:100s,Tags:["CooldownRequired","Direction","LateInitializer","LateEntity"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:30,Attributes:[{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:armor_stand",Tags:["TickingRequired","AimOnInit","LateEntity","Direction"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:-45000,Air:10s,PortalCooldown:60,HandItems:[{id:"minecraft:iron_sword",Count:1b}],Invulnerable:true,Small:true,Invisible:true,DisabledSlots:31,Pose:{RightArm:[-10f,0f,180f]},Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフ\"",Tags:["Cargo"],Radius:1.5f,Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Duration:99,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:false}]}]}]},{id:"minecraft:silverfish",DeathTime:19s,CustomName:"\"キラーナイフ\"",Invulnerable:true,NoGravity:true,Silent:true,PortalCooldown:30,Air:100s,Tags:["CooldownRequired","Direction","LateInitializer","LateEntity"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:60,Attributes:[{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:armor_stand",Tags:["TickingRequired","AimOnInit","LateEntity","Direction"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:-45000,Air:10s,PortalCooldown:60,HandItems:[{id:"minecraft:iron_sword",Count:1b}],Invulnerable:true,Small:true,Invisible:true,DisabledSlots:31,Pose:{RightArm:[-10f,0f,180f]},Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフ\"",Tags:["Cargo"],Radius:1.5f,Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Duration:99,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:false}]}]}]},{id:"minecraft:silverfish",DeathTime:19s,CustomName:"\"キラーナイフ\"",Invulnerable:true,NoGravity:true,Silent:true,PortalCooldown:30,Air:100s,Tags:["CooldownRequired","Direction","LateInitializer","LateEntity"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:330,Attributes:[{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:armor_stand",Tags:["TickingRequired","AimOnInit","LateEntity","Direction"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:-45000,Air:10s,PortalCooldown:60,HandItems:[{id:"minecraft:iron_sword",Count:1b}],Invulnerable:true,Small:true,Invisible:true,DisabledSlots:31,Pose:{RightArm:[-10f,0f,180f]},Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフ\"",Tags:["Cargo"],Radius:1.5f,Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Duration:99,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:false}]}]}]},{id:"minecraft:silverfish",DeathTime:19s,CustomName:"\"キラーナイフ\"",Invulnerable:true,NoGravity:true,Silent:true,PortalCooldown:30,Air:100s,Tags:["CooldownRequired","Direction","LateInitializer","LateEntity"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:300,Attributes:[{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:armor_stand",Tags:["TickingRequired","AimOnInit","LateEntity","Direction"],DeathLootTable:"loot_manager:x",DeathLootTableSeed:-45000,Air:10s,PortalCooldown:60,HandItems:[{id:"minecraft:iron_sword",Count:1b}],Invulnerable:true,Small:true,Invisible:true,DisabledSlots:31,Pose:{RightArm:[-10f,0f,180f]},Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフ\"",Tags:["Cargo"],Radius:1.5f,Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Duration:99,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:false}]}]}]}]}

#ランダムパターン3 - ナイフばら撒き
execute if score $Random matches 2 run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["AbovePlayer"],Life:0,LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;65306],FadeColors:[I;16774912]},{Type:0,Flicker:1b,Colors:[I;52479],FadeColors:[I;16711824]}]}}},Passengers:[{id:"minecraft:area_effect_cloud",CustomName:"\"キラーナイフばら撒き召喚\"",PortalCooldown:5,Tags:["TickingRequired","CallOnFin","Event","KillerknifeSp"],Radius:1.5f,Invulnerable:true,Particle:"minecraft:block minecraft:air",ReapplicationDelay:1,Duration:99,Effects:[{Id:7b,Amplifier:3b,Duration:1}]}]}

scoreboard players reset $Random Global
