### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"発狂ウニ","color":"#FFFFFF","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;2302755]},CustomModelData:123}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「海サイコー！」%1$sは%2$sと共に、大海原へと旅立っていった...。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"潮 の 香 り お ま た せ し ま し た。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],Absolute:{Horizontal:true,Vertical:true}}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:40d},Gravity:{Set:200d}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Blow,MadUrchin,ParticleAndSound],Level:1}]]}],Damage:[{Name:"SmartMotion",Speed:{Add:200d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]}],Block:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]},{Condition:[{Name:"MinMP",Inverse:true,Logic:"OR",MP:1},{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Kill"},{Condition:[{Name:"RandomChance",Chance:0.1d},{Name:"HasTarget",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:24d}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:3d,SpeedRange:6d}],Name:"Teleport"},{Name:"SmartMotion",Speed:{Add:40d,Limit:200d}}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomPoseHead]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:28d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:8d,SpeedRange:16d}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d}},{Name:"Rotation",Direction:[-20f,-20f],DirectionRange:[40f,40f]}],Name:"SmartMotion",TP:true,Speed:{Set:200d}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:8d,SpeedRange:16d}],Name:"Teleport"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:16,Current:16},Call:[{Settings:[{Name:"Rotation",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true}}],Name:"SmartMotion",TP:true,Speed:{Set:0d}}]},{Interval:{Min:1,Max:5,Current:1},Loop:{Max:1,Current:4,Range:16},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true},Direction:[60f,60f],DirectionRange:[-30f,-30f]}],Name:"SmartMotion",TP:true,Speed:{Set:200d}}]},{Interval:{Min:60,Max:200,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",TP:true,Speed:{Set:0d}}]}]}],ProjectileDamage:{Physical:50,Ice:50}}
#Function
# Icosphere
particle fishing ^-0.0 ^-0.59 ^0.0 ^-0.0 ^-999999936.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.42 ^-0.26 ^-0.31 ^-723607296.0 ^-447219520.0 ^-525725312.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.16 ^-0.26 ^-0.5 ^276388000.0 ^-447219808.0 ^-850649152.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.52 ^-0.26 ^0.0 ^894426176.0 ^-447215616.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.16 ^-0.26 ^0.5 ^276388000.0 ^-447219808.0 ^850649152.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.42 ^-0.26 ^0.31 ^-723607296.0 ^-447219520.0 ^525725312.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.16 ^0.26 ^-0.5 ^-276388000.0 ^447219808.0 ^-850649152.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.42 ^0.26 ^-0.31 ^723607296.0 ^447219520.0 ^-525725312.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.42 ^0.26 ^0.31 ^723607296.0 ^447219520.0 ^525725312.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.16 ^0.26 ^0.5 ^-276388000.0 ^447219808.0 ^850649152.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.52 ^0.26 ^0.0 ^-894426176.0 ^447215616.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.0 ^0.59 ^0.0 ^-0.0 ^999999936.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.1 ^-0.5 ^-0.29 ^162455568.0 ^-850654336.0 ^-499995200.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.25 ^-0.5 ^-0.18 ^-425322720.0 ^-850654208.0 ^-309011392.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.15 ^-0.31 ^-0.47 ^-262868784.0 ^-525737568.0 ^-809011648.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.5 ^-0.31 ^0.0 ^-850647808.0 ^-525735904.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.25 ^-0.5 ^0.18 ^-425322720.0 ^-850654208.0 ^309011392.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.31 ^-0.5 ^0.0 ^525729760.0 ^-850651648.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.4 ^-0.31 ^-0.29 ^688189312.0 ^-525736160.0 ^-499996896.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.1 ^-0.5 ^0.29 ^162455568.0 ^-850654336.0 ^499995200.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.4 ^-0.31 ^0.29 ^688189312.0 ^-525736160.0 ^499996896.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.15 ^-0.31 ^0.47 ^-262868784.0 ^-525737568.0 ^809011648.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.56 ^0.0 ^-0.18 ^-951057856.0 ^0.0 ^-309012640.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.56 ^0.0 ^0.18 ^-951057856.0 ^0.0 ^309012640.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.0 ^0.0 ^-0.59 ^-0.0 ^0.0 ^-999999936.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.34 ^0.0 ^-0.47 ^-587785664.0 ^0.0 ^-809016704.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.56 ^0.0 ^-0.18 ^951057856.0 ^0.0 ^-309012640.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.34 ^0.0 ^-0.47 ^587785664.0 ^0.0 ^-809016704.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.34 ^0.0 ^0.47 ^587785664.0 ^0.0 ^809016704.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.56 ^0.0 ^0.18 ^951057856.0 ^0.0 ^309012640.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.34 ^0.0 ^0.47 ^-587785664.0 ^0.0 ^809016704.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.0 ^0.0 ^0.59 ^-0.0 ^0.0 ^999999936.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.4 ^0.31 ^-0.29 ^-688189312.0 ^525736160.0 ^-499996896.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.15 ^0.31 ^-0.47 ^262868784.0 ^525737568.0 ^-809011648.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.5 ^0.31 ^0.0 ^850647808.0 ^525735904.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.15 ^0.31 ^0.47 ^262868784.0 ^525737568.0 ^809011648.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.4 ^0.31 ^0.29 ^-688189312.0 ^525736160.0 ^499996896.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.1 ^0.5 ^-0.29 ^-162455584.0 ^850654336.0 ^-499995232.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.31 ^0.5 ^0.0 ^-525729760.0 ^850651648.0 ^0.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.25 ^0.5 ^-0.18 ^425322720.0 ^850654208.0 ^-309011392.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^0.25 ^0.5 ^0.18 ^425322720.0 ^850654208.0 ^309011392.0 0.00000000054 0 force @a[distance=..32]
particle fishing ^-0.1 ^0.5 ^0.29 ^-162455584.0 ^850654336.0 ^499995232.0 0.00000000054 0 force @a[distance=..32]

