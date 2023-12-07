### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Bounce,HasLootTable,AnalyseLog,Unknown],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"オモイワー","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:true,IsBaby:true,DeathTime:19s,ActiveEffects:[{Id:12,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Duration:-1,Amplifier:1b,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 350
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 350
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier8/common",Count:1,Chance:1d},{Loot:"item:group/drop_item/tier7/common",Count:1,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:1,Chance:64d},{Item:{id:"minecraft:nether_star"},Count:1,Chance:64d},{Item:{id:"minecraft:nether_star"},Count:1,Chance:32d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"我思うに岩也。我、ストライクを所望。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,ScaleUp]},{Settings:[{Name:"Rotation",Direction:[-180f,0f],DirectionRange:[360f,0f]}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:0d},Gravity:{Set:1800d}}],Damage:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DamageColor]},{Name:"SmartMotion",Gravity:{Set:0d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,SteveLowPitch]},{Name:"ChangeTurn",Set:2}],Block:[{}],Tick:[{}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:8,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{}],Block:[{}]},{Name:"SmartMotion",OnBlock:"Bounce"}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:6.25d,Absolute:{Vertical:true}}],Name:"Damage",Player:{DamageType:[Global],BypassResistance:true,CanBeBlocked:false,DeathCause:'[{"translate":"「ﾌﾟﾁｯ」%1$sは%2$sの脅威の重量を受け地面の染みとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:7d}},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:6.25d,Absolute:{Vertical:true}}],Name:"Damage",Mob:{Hit:true,Physical:200},Distance:{Max:6.2d}},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:6.25d,Absolute:{Vertical:true}}],Name:"Damage",Mob:{Hit:true,Physical:200},Distance:{Min:6.3d,Max:7d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],Block:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,ParticleAndSound]}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Speed:{Set:0d},Gravity:{Set:1800d}},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,NormalColor]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:6d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d}},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime1D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:6d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d}},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime2D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:6d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d}},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime3D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:6d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d}},{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime4D]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.03d}],Name:"ChangeTurn",Set:6}]}],Exit:{Loop:{Max:20,Current:20}}},{Index:4,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime1A]},{Name:"SmartMotion",TP:true,Speed:{Add:1d,Limit:50d}}]},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime2A]},{Name:"SmartMotion",TP:true,Speed:{Add:1d,Limit:50d}}]},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime3A]},{Name:"SmartMotion",TP:true,Speed:{Add:1d,Limit:50d}}]},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime4A]},{Name:"SmartMotion",TP:true,Speed:{Add:1d,Limit:50d}},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionSpeed50]}],Name:"ChangeTurn",Loop:1},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.05d}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.1d}],Name:"ChangeTurn",Set:6},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.02d}],Name:"ChangeTurn",Set:7}]}]},{Index:5,Skill:[{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime1B]},{Name:"SmartMotion",TP:true,Speed:{Add:2d,Limit:100d}}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime2B]},{Name:"SmartMotion",TP:true,Speed:{Add:2d,Limit:100d}}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime3B]},{Name:"SmartMotion",TP:true,Speed:{Add:2d,Limit:100d}}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime4B]},{Name:"SmartMotion",TP:true,Speed:{Add:2d,Limit:100d}},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionSpeed100]}],Name:"ChangeTurn",Loop:1},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.05d}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.02d}],Name:"ChangeTurn",Set:7}]}]},{Index:6,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime1C]},{Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:200d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime2C]},{Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:200d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime3C]},{Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:200d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime4C]},{Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:200d}},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.05d}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}},{Name:"RandomChance",Chance:0.02d}],Name:"ChangeTurn",Set:7}]}]},{Index:7,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Gravity:{Set:0d}},{Settings:[{Name:"At",Target:{Look:"All",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Target:{Look:"All",Radius:64d,IgnoreBlocks:true},Speed:3d,Absolute:{Horizontal:true}}],Name:"Parabolic",MotionTick:60,MotionGravity:0.08d},{Name:"SmartMotion",OnBlock:"Stick",KeepRotation:true}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:8,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime1D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime2D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime3D]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,DungeonRock,DisplayAnime4D]}]}],Exit:{Loop:{Max:120,Current:120}}}]}
#Function
playsound minecraft:entity.mooshroom.convert hostile @a ~ ~ ~ 2.0 0.5 0.0
playsound minecraft:entity.mooshroom.convert hostile @a ~ ~ ~ 2.0 0.6 0.0
playsound minecraft:entity.mooshroom.convert hostile @a ~ ~ ~ 2.0 0.7 0.0