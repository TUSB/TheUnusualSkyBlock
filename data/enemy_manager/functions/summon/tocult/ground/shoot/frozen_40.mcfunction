##############################
### フローズン召喚 - Tocult Ground Shoot
##############################

summon minecraft:villager ~ ~1 ~ {Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:zombie_pigman",Silent:true,CustomName:"\"フローズン\"",Anger:9999s,IsBaby:true,AbsorptionAmount:1200f,Attributes:[{Name:"generic.movementSpeed",Base:0.35d},{Name:"generic.attackDamage",Base:4d},{Name:"generic.knockbackResistance",Base:0.3d},{Name:"generic.followRange",Base:48d}],ActiveEffects:[{Id:8b,Amplifier:3b,Duration:2147483647,ShowParticles:false},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],HandItems:[{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s}]}}],Passengers:[{id:"minecraft:guardian",Silent:true,AbsorptionAmount:1200f,Tags:["Cargo"],Attributes:[{Name:"generic.attackDamage",Base:20d},{Name:"generic.followRange",Base:48d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000}]},{id:"minecraft:potion",CustomName:"\"フローズン\"",Tags:["TickingRequired"],PortalCooldown:9999,Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:1048575,CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1},{Id:2b,Amplifier:10b,Duration:120},{Id:18b,Amplifier:10b,Duration:120}]}},Passengers:[{id:"minecraft:arrow",CustomName:"\"フローズン\"",Tags:["TickingRequired","FlowingWater"],PortalCooldown:9999,Color:2146815,life:1200}]}]}]}
