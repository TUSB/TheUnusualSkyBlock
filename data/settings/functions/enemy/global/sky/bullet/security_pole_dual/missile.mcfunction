### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",NoGravity:true,Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:false}],CustomName:'{"translate":"セキュリティ・ミサイル・デュアル","color":"#FF0000","bold":true}',PortalCooldown:400,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,CallOnTick,CooldownRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 115
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sピピピピ！！！","with":[{"translate":"【能力：移動・自爆】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-75f],DirectionRange:[180f,0f],Absolute:{Vertical:true},Speed:0.8d,SpeedRange:0.5d}],Block:[{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%1$sは%2$sによって爆破された。","with":[{"selector":"@s"},{"nbt":"MobName","storage":"mob_data:","interpret":true}]}]'},Distance:{Max:3}},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Function",Tags:[Global,Event,Function,VanillaExplosion,Particle]}],Tick:[{Name:"Function",Tags:[Global,Sky,Function,SecurityPoleDual,MissileTrail]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{FallDistance:-10E300f,NoGravity:0b,Motion:[0d,0d,0d]}},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:50,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-15f,0f],DirectionRange:[30f,0f]}],Name:"SmartMotion",Start:true,TP:1b,OnBlock:"Break",Speed:{Set:75}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Call:[{}]}]}]}
