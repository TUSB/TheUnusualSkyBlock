### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"コンバットゾンビ"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E300f,-1E300f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 230
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"ChangeStatus",Defense:{Limit:250},SpecialDefense:{Limit:250}}],Damage:[{Name:"ChangeStatus",Defense:{Add:4},SpecialDefense:{Add:4}}],TurnCount:10,Turn:[{Index:1,Exit:{Time:200,TimeCount:200}},{Index:2,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:3,Skill:[{Call:[{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0d}]}}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-2]}]},{Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieAura1]}]},{Name:"ChangeStatus",Attack:{Add:30},Defense:{Add:20},SpecialDefense:{Add:20}},{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0.28d}]}}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:4,Exit:{Time:200,TimeCount:200}},{Index:5,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:6,Skill:[{Call:[{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0d}]}}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-2]}]},{Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieAura2]}]},{Name:"ChangeStatus",Attack:{Add:32},HP:{Add:41},Defense:{Add:39},SpecialDefense:{Add:39}},{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0.34d}]}}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:7,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:2,IgnoreBlocks:0b}}]}},{Index:8,Skill:[{Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,Jump]},{Name:"Step",Direction:[0f,-30f],Speed:0.8d,Absolute:{Vertical:true},Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:5,IgnoreBlocks:0b}}]},{Name:"MergeNBT",NBT:{FallDistance:-10E300f,OnGround:0b}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:9,Exit:{Condition:[{Name:"CheckNBT",NBT:{OnGround:1b}}]}},{Index:10,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:7}]}]}]}
