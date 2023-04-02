### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",NoGravity:true,Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:false},{Id:28,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:100,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,CallOnTick,CooldownRequired]}
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
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,0f],Absolute:{Vertical:true},Speed:0.5d}],Block:[{Name:"Damage",Player:{DamageType:[Global,Blast]}}],Tick:[{Name:"Function",Tags:[Global,Sky,Function,SecurityPoleDual,MissileTrail]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,SecurityPoleDual,MissileAnnouncement],Level:1}]],IsChild:true,Settings:[{Name:"Direction",Target:{Look:"Player",Radius:40,IgnoreBlocks:true},DirectionRange:[0f,360f],Absolute:{Horizontal:true},Speed:3d,SpeedRange:4d}]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"Child",Radius:50d,IgnoreBlocks:1b},Rotate:[-360f,-180f],Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Start:true,KeepRotation:true,OnBlock:"Break",Speed:{Set:50}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Call:[{}]}]}]}
