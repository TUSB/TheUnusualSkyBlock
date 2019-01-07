##############################
### ダークゴブリン召喚 - Global Ground Blow
##############################

summon minecraft:spawner_minecart ~ ~1 ~ {SpawnCount:1s,SpawnRange:2s,Delay:0s,MinSpawnDelay:0s,MaxSpawnDelay:0s,MaxNearbyEntities:32s,RequiredPlayerRange:64s,Tags:["CooldownRequired"],PortalCooldown:5s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:villager",DeathTime:19s,Health:0f,Passengers:[{id:"minecraft:zombie",AbsorptionAmount:180f,IsBaby:true,CustomName:"{\"text\":\"ダークゴブリン\"}",Tags:["TickingRequired","ReversedOnHurt","AbyssWarp","HasSkill","BlinkLv1","CallOnDeath","Event","SoulOfAbyss"],PortalCooldown:800s,Attributes:[{Name:"generic.knockbackResistance",Modifiers:[{Amount:15d,UUIDLeast:0l},{Amount:20d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:"generic.attackDamage",Base:10d}],HandItems:[{tag:{Enchantments:[{id:"knockback",lvl:3s}]},id:"minecraft:stone_axe",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:3747927}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:10049023}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:3747927}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"8cb14267-82d7-4552-bfce-4286c94e1338",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAzODljYTg4ZmVmN2IxYjgxMDdkOTM0OWI4NTNkNmYzOGY5Y2Q3Mjk5N2RlNWRlYTkyNjU5NGM3MmI5N2U2In19fQ=="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"minecraft:squid_ink",CustomName:"\"ダークオーラ\"",Duration:20,Radius:0.5f,RadiusPerTick:0f}]}]}}]}
