##############################
### デーモンアイ召喚 - Global Sky Blow
##############################

summon zombie ~ ~1 ~ {CustomName:"\"デーモンアイ\"",Tags:["Enemy"],DeathLootTable:"loot_manager:empty",NoGravity:true,IsBaby:true,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Attributes:[{Name:"generic.movementSpeed",Base:0.15d},{Name:"generic.attackDamage",Base:15d},{Name:"generic.knockbackResistance",Base:0.7d},{Name:"generic.followRange",Base:32d}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{Unbreakable:true,SkullOwner:{Id:"a66308e4-3716-4c4f-957b-713c44d59d72",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjY4MjYyMjY3MjcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYWIzYmJjMmY5NDA3YmU0MGVmNzkzYjY5MzNmNGIzMjIyOTk5ZmUyOTU5ZWQwZmU5Y2ZhODFiY2Q0NCJ9fX0="}]}}}}],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:150,MP:0,LifeTime:1600.00d},TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Update",FollowRange:48.00d},MoveSettingsList:[{SpinSpeed:10d,Forward:{Speed:0.01d},Upward:{Speed:0d},Ignore:[Tilt],Repeater:{End:{Mean:10d},Recycle:On,Count:1}},{Forward:{Speed:0.01d},SpinSpeed:50d,Ignore:[Rotate],Repeater:{End:{Mean:1d},Recycle:On,Count:1}}]}}}]}
