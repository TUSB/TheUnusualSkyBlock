##############################
### パティシエ召喚 - Global Ground Blow
##############################

summon minecraft:villager ~ ~1 ~ {Silent:true,Health:0f,DeathTime:19s,Passengers:[{CustomName:"\"パティシエ\"",Anger:32767s,IsBaby:true,id:"minecraft:zombie_pigman",AbsorptionAmount:4000f,Tags:["HasSkill","HealLv2"],Attributes:[{Name:"generic.knockbackResistance",Base:-110d,Modifiers:[{Amount:15d,UUIDLeast:0l},{Amount:25d,UUIDLeast:1l},{Amount:60d,UUIDLeast:2l}]},{Name:"generic.movementSpeed",Base:0.4d},{Name:"generic.attackDamage",Base:18d},{Name:"generic.followRange",Base:32d},{Name:"zombie.spawnReinforcements",Base:1d}],HandItems:[{tag:{display:{Name:"\"怪しい粉\""},Enchantments:[{id:"minecraft:sharpness",lvl:40s},{id:"minecraft:knockback",lvl:3s},{id:"fire_aspect",lvl:10s}]},id:"minecraft:sugar",Count:1b},{tag:{display:{Name:"\"怪しい粉\""},Enchantments:[{id:"minecraft:sharpness",lvl:40s},{id:"knockback",lvl:5s},{id:"fire_aspect",lvl:10s}]},id:"minecraft:sugar",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{display:{color:16777215}},id:"minecraft:leather_boots",Count:1b},{tag:{display:{color:16777215}},id:"minecraft:leather_leggings",Count:1b},{tag:{display:{color:16777215}},id:"minecraft:leather_chestplate",Count:1b},{tag:{SkullOwner:{Id:"4f2f4950-e14d-4054-9d70-ab3e6c6e5153",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWMyNDFhNTk3YzI4NWUxMDRjMjcxMTk2ZDc4NWRiNGNkMDExMGE0MGM4ZjhlNWQzNTRjNTY0NDE1OTU2N2M5ZCJ9fX0="}]}}},id:"minecraft:player_head",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{Particle:"minecraft:block minecraft:air",CustomName:"\"パティシエオーラ\"",Tags:[Cargo],Duration:80,Radius:1f,RadiusOnUse:0f,ReapplicationDelay:0,Effects:[{Id:17b,Amplifier:10b,Duration:20}],id:"area_effect_cloud"},{id:"area_effect_cloud",Particle:"end_rod",CustomName:"\"パティシエオーラ\"",Tags:["Cargo"],Duration:80,Radius:0.001f,RadiusOnUse:0f,ReapplicationDelay:0}]}]}
