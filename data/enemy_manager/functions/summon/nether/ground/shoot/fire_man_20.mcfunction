##############################
### ファイヤーマン召喚 - Nether Ground Shoot
##############################

summon minecraft:magma_cube ~ ~1 ~ {CustomName:"\"ファイヤーマン\"",Tags:["FollowPlayer","Vehicle"],NoGravity:true,Size:5,AbsorptionAmount:200f,DeathLootTable:"loot_manager:x",ActiveEffects:[{Id:28b,Amplifier:127b,Duration:2000000}],Passengers:[{id:"minecraft:wither_skeleton",CustomName:"\"ファイヤーマン\"",AbsorptionAmount:200f,DeathLootTable:"loot_manager:empty",Tags:["HasSkill","Call","Event","FirebombSummoner"],Attributes:[{Name:"generic.knockbackResistance",Modifiers:[{Amount:12d,UUIDLeast:0l},{Amount:16d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:4465152},Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:4465152},Enchantments:[{id:"minecraft:protection",lvl:0s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:4465152},Enchantments:[{id:"minecraft:protection",lvl:0s}]}},{id:"minecraft:magma_block",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:3s}]}}],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:flame",lvl:3s}]}},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:flame",lvl:3s}]}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}]}
