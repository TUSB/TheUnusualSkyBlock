##############################
### 魔弾のAI変更
##############################

execute if entity @a[distance=..16] run data merge entity @s {Tags:["Initialized","Homing","Homing1","Homing2","InAir","InWater","InLava","Swim","Step","Up","Down","Vehicle","Anchored","AbyssWarp","HasSkill","BlinkLv1","Shooter"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.1d,UUIDLeast:0l},{Amount:20d,UUIDLeast:1l},{Amount:1.5d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:1d,UUIDLeast:2l},{Amount:100d,UUIDLeast:3l},{Amount:100d,UUIDLeast:4l}]}]}

execute if entity @a[distance=16..] run data merge entity @s {Tags:["Initialized","FacingPlayer","Leave","Leave8","InAir","InWater","InLava","Swim","HasSkill","Vehicle","Anchored","AbyssWarp","Shooter"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.2d,UUIDLeast:0l},{Amount:20d,UUIDLeast:1l},{Amount:1.5d,UUIDLeast:2l}]},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:1d,UUIDLeast:2l},{Amount:100d,UUIDLeast:3l},{Amount:100d,UUIDLeast:4l}]}]}

