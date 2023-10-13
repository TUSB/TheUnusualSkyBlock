### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"バンパーストーム","color":"#FF0000","bold":true}',Silent:true,IsBaby:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Duration:-1,Amplifier:1b,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1021}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 12d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 70
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾄﾞｺﾞｫｫｫｫ!!」%2$sの質量のある突風に激突し%1$sはきりもみ回転をしながら地面へと激突した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"盾は構えずにおとなしく吹っ飛ばされてね。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:60d,Range:20d},Gravity:{Set:100d}}],Attack:[{Name:"Damage",Player:{DamageType:[Fall],DeathCause:'[{"translate":"「ﾄﾞｺﾞｫｫｫｫ!!」%2$sの質量のある突風に激突し%1$sはきりもみ回転をしながら地面へと激突した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},AEC:{Effects:[{Id:25,Amplifier:80b,Duration:8,ShowParticles:false},{Id:25,Amplifier:1b,Duration:35,ShowParticles:false},{Id:17,Amplifier:3b,Duration:120,ShowParticles:false}]}},{Name:"ChangeTurn",Set:3},{Name:"Function",Tags:[Global,Sky,Blow,BumperStorm,ParticleAndSound2]}],Tick:[{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Global,Sky,Blow,BumperStorm,ParticleAndSound1]}],TurnCount:8,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:0d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:3,Max:12,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64}}],Name:"ChangeTurn",Set:3}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"RandomChance",Chance:0.2d}],Name:"ChangeTurn",Set:5}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:1,Max:3,Current:1},Loop:{Max:1,Current:1,Range:3},Call:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Speed:{Set:180d,Range:300d},Gravity:{Set:0d}},{Name:"Function",Tags:[Global,Sky,Blow,BumperStorm,ParticleAndSound2]}],MP:5}],Exit:{Loop:{Max:1,Current:1}}},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:15,Current:15},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:80,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:0d},Gravity:{Set:0d}},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:80d,IgnoreBlocks:true}}],Name:"Laser",Laser:"RedLaser",Loop:80},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Warning]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:6,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionToRotation]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:80,IgnoreBlocks:true}}],Name:"SmartMotion",TP:true,Speed:{Set:100d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:7,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionToRotation]},{Name:"SmartMotion",Speed:{Add:16d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:8,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Speed:{Set:20d},Gravity:{Set:20d}}]},{Interval:{Min:10,Max:80,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Speed:{Set:0d},Gravity:{Set:0d}},{Name:"ChangeTurn",Set:2}]}]}]}
