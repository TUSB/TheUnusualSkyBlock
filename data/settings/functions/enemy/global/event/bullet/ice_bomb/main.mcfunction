### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"よくある爆弾","color":"#FFFFFF"}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],NoAI:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnDamage,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:135}}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 5000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Damage",Player:{Damage:20d,DamageType:[Blast],DeathCause:'[{"translate":"「カチーン」%1$sは%2$sの爆風に巻き込まれ断末魔を上げ凍結した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:10,Ice:200,Hit:true},Distance:{Min:0.1d,Max:4d},Explosion:-1,AEC:{Particle:"item ice",Duration:10,Radius:1f,Effects:[{Id:14b,Amplifier:4b,Duration:60,ShowParticles:false}]}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,IceExplosion,Aec],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:84d},Gravity:{Set:-1250d}}],TurnCount:4,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"RightUp"},Rotate:[100f,0f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"MergeNBT",NBT:{NoAI:false}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:138}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:10136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,IceBombHuge,Main],Level:1}]]},{Name:"ChangeAI",Death:[{}]},{Name:"Kill"}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[-180f,0f],DirectionRange:[360f,0f]}],Name:"Step",Speed:0.01d}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:135}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:136}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:137}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"ChangeAI",Death:[{}]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"Kill"},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{Fire:-1s}},{Name:"CheckNBT",Inverse:true,NBT:{Fire:0s}}],Name:"ChangeTurn",Set:4},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:138}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:138}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:137}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:136}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"ChangeAI",Death:[{}]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"Kill"},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{Fire:-1s}},{Name:"CheckNBT",Inverse:true,NBT:{Fire:0s}}],Name:"ChangeTurn",Set:4},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;4441343]},CustomModelData:135}}],DisabledSlots:4144959}},{Name:"SmartMotion",Speed:{Add:-13d,Limit:0d},Gravity:{Add:500d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]}],Exit:{Loop:{Max:28,Current:28}}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"Kill"}]}]}]}
#Function
playsound block.lantern.place hostile @a[distance=..32] ~ ~ ~ 0.7 0.6 0
