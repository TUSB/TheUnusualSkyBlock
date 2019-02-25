##############################
### 影の騎士召喚 - Underworld Ground Blow
##############################

summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"loot_manager:empty",AbsorptionAmount:300f,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"large_smoke",Radius:0.5f,Duration:40,Tags:["Cargo"],CustomName:"{\"text\":\"影\"}"}],CustomName:"{\"text\":\"影の騎士\"}",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Unbreakable:true}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Unbreakable:true}},{}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[0.85F,-1E40F,-1E40F,0.85F],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:9999999,ShowParticles:false}],Attributes:[{Name:generic.movementSpeed,Base:0.3d},{Name:generic.attackDamage,Base:15d}]}
playsound minecraft:entity.elder_guardian.curse master @a[distance=..10] ~ ~ ~ 1 0.75
