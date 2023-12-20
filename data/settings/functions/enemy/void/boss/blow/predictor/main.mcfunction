### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog,Unknown],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"予測者","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:7000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;13285631]}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 650
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier6/common",Count:1,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:8,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s銀河ベーシック標準語で「KILL」と書かれているが、同僚からは変な文字の羊羹として見られていることを気にしている。","with":[{"translate":"【能力：不明】","color":"#AA00FF"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Name:"ChangeTurn",Set:9}],TurnCount:9,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:30d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3},{Name:"ChangeTurn",Set:4},{Name:"ChangeTurn",Set:5},{Name:"ChangeTurn",Set:6}]}]},{Index:2,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;16711680]}}}]}},{Name:"ChangeStatus",ElementFire:{Set:200},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Void,Boss,Blow,Predictor,FireBullet],Level:1}]]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:20},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]},{Index:3,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;25087]}}}]}},{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:200},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Void,Boss,Blow,Predictor,IceBullet],Level:1}]]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:20},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]},{Index:4,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;16750848]}}}]}},{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:200},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Void,Boss,Blow,Predictor,LightningBullet],Level:1}]]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:20},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]},{Index:5,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;16777215]}}}]}},{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:200},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Void,Boss,Blow,Predictor,LightBullet],Level:1}]]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:20},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]},{Index:6,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;10027263]}}}]}},{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:200}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:1d}],Name:"Spawn",SpawnEntities:[[{Tags:[Void,Boss,Blow,Predictor,DarkBullet],Level:1}]]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:20},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]},{Index:7,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"KILL呼び出し"}'},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0b,Colors:[I;13285631]}}}]}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:8,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"待機"}'}]}],Exit:{Time:80,TimeCount:80}},{Index:9,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:6,Current:6},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:80,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}],Condition:[{Name:"MP",MP:120},{Name:"MinMP",MP:20,Percent:true}],Name:"Teleport"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
