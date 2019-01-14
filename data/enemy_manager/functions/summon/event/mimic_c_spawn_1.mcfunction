##############################
### ミミック本体スポーン召喚 - Event  
##############################

##ここに本体
summon silverfish ~ ~1 ~ {Silent:true,Invulnerable:true,Tags:["Vehicle","Anchored","Swim","InAir","Step","Front","FacingPlayer"],CustomName:"{\"text\":\"ミミック\"}",ActiveEffects:[{Id:14b,Duration:1000000000,Amplifier:127b,ShowParticles:false},{Id:8b,Duration:1000000000,Amplifier:5b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0d,UUIDLeast:0l},{Amount:10d,UUIDLeast:1l},{Amount:1.9d,UUIDLeast:2l}]},{Name:"generic.attackDamage",Base:10d}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attackDamage",UUIDLeast:1L,UUIDMost:11L,Operation:2,AttributeName:"generic.attackDamage",Amount:4d,Slot:"mainhand"}]}},{}],HandDropChances:[-1E40f,-1E40f],Passengers:[{id:"minecraft:area_effect_cloud",Duration:100000000,Tags:["Vehicle","Anchored","Anchor"],Radius:0f,Particle:"minecraft:block minecraft:air",Passengers:[{id:"minecraft:zombie_pigman",Silent:true,Tags:["FacingPlayer","Anchor"],CustomName:"{\"text\":\"Grumm\"}",AbsorptionAmount:2500f,ActiveEffects:[{Id:14b,Duration:1000000000,Amplifier:127b,ShowParticles:false}],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"4f372358-2cca-4129-bf51-f9f3d67acc59",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3YjM4OThiYzdmYWMyMTMwMTU3OTNjNDAzODc3ZjMzZWM3Y2M0YjM0ODlhODhmZGIzMTZhODRhMjBkMjc4ZCJ9fX0="}]}}}}],Attributes:[{Name:"generic.attackDamage",Base:-1000d},{Name:"generic.followRange",Base:0d}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}]}]}
##自身を消去
tag @s add Garbage
tag @s add Summoned
