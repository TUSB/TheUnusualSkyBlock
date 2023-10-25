### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パンプキンモータ","color":"#FF0000"}',Silent:true,IsBaby:true,FallDistance:-99999f,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:120,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnBlock,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{tag:{Enchantments:[{id:"minecraft:protection",lvl:0s}]},id:"minecraft:pumpkin",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾒｷｭｧ!」%1$sは%2$sの凶弾に直撃し全治100年の重傷を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"彼は今日占いで自分が爆発する運命にあることを知った。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,-60f],DirectionRange:[0f,15f]},{Name:"Direction",Speed:1d}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:50d,Range:50d},Gravity:{Set:300d},E:75}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,StardustBomb,Aec],Level:1}]]}],Block:[{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionZerospeed]}],Name:"MergeNBT",NBT:{NoAI:true}},{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SmartMotionZerospeed]}],Name:"SmartMotion",Stop:true},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:2d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true}]}
#Function
playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..16] ~ ~ ~ 2 0.7 0
