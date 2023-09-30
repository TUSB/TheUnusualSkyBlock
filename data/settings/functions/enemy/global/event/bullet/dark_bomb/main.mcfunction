### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"よくある爆弾","color":"#FFFFFF"}',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:18,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:127b,Duration:-1,ShowParticles:false}],NoAI:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:135}}],DisabledSlots:4144959}
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
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"MinLv",Level:2}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Condition:[{Name:"MinLv",Level:2}],Name:"MergeNBT",NBT:{NoAI:false}},{Condition:[{Name:"MinLv",Level:2}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:0d,SpeedRange:7d}],Name:"Parabolic",MotionTick:20,MotionGravity:0.08d}],Death:[{Name:"Damage",Player:{Damage:20d,DamageType:[Blast],DeathCause:'[{"translate":"「ノゾミガー！」%1$sは%2$sの爆風に巻き込まれ断末魔を上げ白骨化した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:10,Dark:200,Hit:true},Distance:{Min:0.1d,Max:4d},Explosion:-1,AEC:{Particle:"squid_ink",Duration:10,Radius:1f,Effects:[{Id:14,Amplifier:7b,Duration:60,ShowParticles:false}]}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,DarkExplosion,Aec],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:84d},Gravity:{Set:-1250d}}],TurnCount:4,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"RightUp"},Rotate:[100f,0f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Loop:1}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Loop:1},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:138}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:6,Current:6},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}],Name:"ChangeTurn",Loop:1},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:10136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,DarkBombHuge,Main],Level:1}]]},{Name:"ChangeAI",Death:[]},{Name:"Kill"}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Direction:[-180f,0f],DirectionRange:[360f,0f]}],Name:"Step",Speed:0.01d},{Name:"ChangeAI",Tick:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Metal]},{Name:"SmartMotion",Speed:{Add:-4.3d,Limit:0d},Gravity:{Add:166d,Limit:400d}},{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:2d,IgnoreBlocks:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:120d},Gravity:{Set:50d}}]},{Name:"MergeNBT",NBT:{NoAI:false}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:135}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:137}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"ChangeAI",Death:[]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"Kill"},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{Fire:-1s}},{Name:"CheckNBT",Inverse:true,NBT:{Fire:0s}}],Name:"Kill"},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:138}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:138}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:137}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"ChangeAI",Death:[]},{Condition:[{Name:"CheckBlock",Block:[Water]}],Name:"Kill"},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{Fire:-1s}},{Name:"CheckNBT",Inverse:true,NBT:{Fire:0s}}],Name:"Kill"},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;13338623]},CustomModelData:135}}],DisabledSlots:4144959}}]}],Exit:{Loop:{Max:28,Current:28}}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"Kill"}]}]}]}
#Function
playsound block.lantern.place hostile @a[distance=..32] ~ ~ ~ 0.7 0.6 0
