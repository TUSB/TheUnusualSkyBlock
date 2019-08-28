##############################
### フローズン召喚 - Tocult Ground Shoot
##############################

summon zombie_pigman ~ ~1 ~ {Tags:[Enemy],DeathLootTable:"loot_manager:empty",Silent:true,CustomName:"\"フローズン\"",Anger:30000s,IsBaby:true,DeathTime:19s,Attributes:[{Name:"generic.movementSpeed",Base:0.35d},{Name:"generic.attackDamage",Base:4d},{Name:"generic.knockbackResistance",Base:0.3d},{Name:"generic.followRange",Base:48d}],ActiveEffects:[{Id:8b,Amplifier:3b,Duration:2147483647,ShowParticles:false},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],HandItems:[{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s}]}}],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{SkillOnDeath:[{Name:"IcicleEdge",Once:1b}],StatusSettings:{HP:1200}}}},{id:zombie,CustomName:"\"デーモンアイ\"",Tags:["Enemy"],DeathLootTable:"loot_manager:empty",NoGravity:true,IsBaby:true,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Attributes:[{Name:"generic.movementSpeed",Base:0.15d},{Name:"generic.attackDamage",Base:15d},{Name:"generic.knockbackResistance",Base:0.7d},{Name:"generic.followRange",Base:32d}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{Unbreakable:true,SkullOwner:{Id:"a66308e4-3716-4c4f-957b-713c44d59d72",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjY4MjYyMjY3MjcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYWIzYmJjMmY5NDA3YmU0MGVmNzkzYjY5MzNmNGIzMjIyOTk5ZmUyOTU5ZWQwZmU5Y2ZhODFiY2Q0NCJ9fX0="}]}}}}],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:150,MP:0,LifeTime:1600.00d},TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Update",FollowRange:48.00d},MoveSettingsList:[{SpinSpeed:10d,Forward:{Speed:0.01d},Upward:{Speed:0d},Ignore:[Tilt],Repeater:{End:{Mean:10d},Recycle:On,Count:1}},{Forward:{Speed:0.01d},SpinSpeed:50d,Ignore:[Rotate],Repeater:{End:{Mean:1d},Recycle:On,Count:1}}]}}}]},{id:husk,NoGravity:true,Glowing:true,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:100,MP:0,LifeTime:600.00d},TargetSettings:{Target:"Natural",Active:"Always",Detect:"Nearest",Destination:"Update",FollowRange:32.00d}}}},{id:husk,Tags:[Enemy],Silent:true,Attributes:[{Name:"generic.movementSpeed",Base:0.22d},{Name:"generic.attackDamage",Base:7d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:1s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:12,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:12,Pattern:"cbo"},{Color:12,Pattern:"cre"},{Color:12,Pattern:"tt"},{Color:12,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{Skill:[{Name:"Call",MinTime:100,MaxTime:200,Target:[Global,Ground,Shoot,Flag,01Brown]}],StatusSettings:{HP:130}}}}]},{id:snowball,Tags:[Enemy,Bullet],NoGravity:1b,Item:{id:brown_wool,Count:1b},Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{LifeTime:200.00d},TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Direction",FollowRange:24.00d},MoveSettingsList:[{Forward:{Speed:0.5d},Repeater:{End:{Mean:0d,Range:0.00d},Recycle:On}}]}}},{id:area_effect_cloud,CustomNameVisible:true,CustomName:"[{\"text\":\"|\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"true\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"-=< \",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"ジェノサイドボム停止中\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\" >=-\",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"red\"}]",Particle:"minecraft:block minecraft:air",Duration:30,Radius:0.01f},{id:zombie_pigman,CustomName:"{\"text\":\"デイドラ\",\"color\":\"red\",\"bold\":true}",Anger:32767s,DeathLootTable:"loot_manager:empty",Tags:["Enemy"],Attributes:[{Name:"generic.attackDamage",Base:45d},{Name:"generic.movementSpeed",Base:0.25d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:32d},{Name:"zombie.spawnReinforcements",Base:1d}],ActiveEffects:[{Amplifier:10b,Duration:2147483647,Id:8b,ShowParticles:0b},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}],HandItems:[{tag:{Unbreakable:true,display:{Name:"\"アカヴィリ刀\""},Enchantments:[{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:3s}]},id:"minecraft:stone_sword",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{Name:"\"デイドラのブーツ\"",color:16711935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{Name:"\"デイドラのグリーヴ\"",color:16711935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{Name:"\"デイドラのキュイラス\"",color:16711935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,display:{Name:"\"デイドラの兜\""},Enchantments:[{id:"minecraft:thorns",lvl:7s}]},id:"minecraft:damaged_anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:4000}}}},{id:skeleton,Tags:[Enemy,WeakPoint,WeakToFire],Silent:true,DeathTime:19s,DeathLootTable:"loot_manager:empty",CustomName:"\"Grumm\"",Attributes:[{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"ef9b5f33-81b6-45a0-a3b7-085c4b806d87",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWJkYTcwZjYzZGFlNmQ5YjAwMDQ0OTdkNGRmMmU1ZTQ2ZjhiZjE2NTRjYmRiMWY1ODUyNTk4MGE4NTdhMDg1MyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{SkillOnFin:[{Name:"GenocideBlast",Once:On}],StatusSettings:{HP:150,LifeTime:20.00d}}}},{id:shulker_bullet,Tags:[Enemy,Bullet],CustomName:"\"テスト弾\"",NoGravity:true,Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Direction",FollowRange:32.00d},MoveSettingsList:[{StartDirection:{RotateOffset:{Mean:0d,Range:10d}},Forward:{Speed:0.3d,Acceleration:0.01d},Repeater:{End:{Mean:1d,Range:0.00d},Recycle:0ff,Count:1}}]}}}]}]}]}]},{id:husk,Tags:[Enemy],Silent:true,Attributes:[{Name:"generic.movementSpeed",Base:0.22d},{Name:"generic.attackDamage",Base:7d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:1s}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:8344112}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:12,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:12,Pattern:"cbo"},{Color:12,Pattern:"cre"},{Color:12,Pattern:"tt"},{Color:12,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{Skill:[{Name:"Call",MinTime:100,MaxTime:200,Target:[Global,Ground,Shoot,Flag,01Brown]}],StatusSettings:{HP:130}}}}]}]}]}
