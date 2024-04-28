### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnTimeOut,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog,"Unknown","Unmoved"],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"怒れる木","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],PortalCooldown:7000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:2}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 8d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:4,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sの不自然さを問いかけた結果その代償を命で支払った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s手加減は終わりだ。ワープして絶対シめるわ。","with":[{"translate":"【能力：不明】","color":"#AA00FF"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:64d}},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Message",Message:'{"translate":"【怒れる木】： はぁ～次は絶対良質な土にするから覚悟しろや～","color":"#AA00FF"}'},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Message",Message:'{"translate":"【怒れる木】： おまえつえーな～春になったら邪魔しに来るわ。","color":"#AA00FF"}'}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:9,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:20},Loop:{Max:6,Current:6},Call:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-30f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[-15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-15f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[0f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[0f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[15f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[30f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]}],MP:5}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,TextDisplay,LifeScouterScale],Scale:2.5f,Translation_y:4.5f},{Name:"SmartMotion",OnBlock:"Bounce",Start:true,Gravity:{Set:0d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[0f,-70f]}],Name:"SmartMotion",TP:true,Speed:{Add:3d,Limit:50d}},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine]}]}],Exit:{Time:120,TimeCount:120}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true,ActiveEffects:[{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}]}},{Name:"ChangeAI",Block:[{Name:"ChangeTurn",Set:6}]},{Name:"SmartMotion",OnBlock:"Stick"}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[0f,70f]}],Name:"SmartMotion",TP:true,Gravity:{Add:30d,Limit:500d}},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine]}]}]},{Index:6,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:false,ActiveEffects:[{Id:28,Amplifier:1b,Duration:1,ShowParticles:false}]}},{Name:"ChangeAI",Block:[]},{Name:"SmartMotion",OnBlock:"Slide",Stop:true}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは%2$sが何故飛ぶのかを問いかけた結果その代償を命で支払った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Min:0.1d,Max:7d},Explosion:-1},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]}],MP:10},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}}]}],Exit:{Loop:{Max:4,Current:4}}},{Index:7,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[60f,0f],Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{Name:"Function",Tags:[Global,Event,Function,TextDisplay,LifeScouterScale],Scale:2.5f,Translation_y:4.5f},{Name:"MergeNBT",NBT:{NoAI:true}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:8,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[3f,0f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:5,Current:5},Call:[{Settings:[{Name:"Rotation",Flip:true},{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryGoldenAppleBullets],Level:1}]]},{Settings:[{Name:"Rotation",Target:{Look:"Self"}},{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryGoldenAppleBullets],Level:1}]]}],MP:5},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:12,Current:12}}},{Index:9,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24d,IgnoreBlocks:1b}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,0f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}],MP:3}],Exit:{Loop:{Max:1,Current:1}}}]}
