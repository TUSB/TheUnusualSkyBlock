### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"コンバットゾンビ"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E300f,-1E300f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"標準的なゾンビです。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"ChangeStatus",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}}],TurnCount:7,Turn:[{Index:1,Exit:{Time:200,TimeCount:200}},{Index:2,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:3,Skill:[{Call:[{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0d}]}},{Name:"ChangeStatus",Defense:{Add:1000,Limit:1500},SpecialDefense:{Add:1000,Limit:1500}},{Name:"ChangeAI",Damage:[]}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-2]}]},{Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation1-1]},{Name:"ChangeAI",Damage:[{Name:"ChangeStatus",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}},{Name:"Heal",Range:0,Multiplier:1d,Condition:[{Name:"RandomChance",Chance:0.09d},{Name:"MP",MP:13}]}],Tick:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieAura1]}]},{Name:"ChangeStatus",Attack:{Add:30},Defense:{Add:20},SpecialDefense:{Add:20}},{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0.28d},{Name:generic.knockback_resistance,Base:0.3d}]}},{Name:"ChangeStatus",Defense:{Add:-1000,Limit:250},SpecialDefense:{Add:-1000,Limit:250}}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:4,Exit:{Time:200,TimeCount:200}},{Index:5,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20,IgnoreBlocks:true}}]}},{Index:6,Skill:[{Call:[{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0d}]}},{Name:"ChangeStatus",Defense:{Add:1000,Limit:1500},SpecialDefense:{Add:1000,Limit:1500}},{Name:"ChangeAI",Damage:[]}]},{Interval:{Min:3,Max:5,Current:3},Loop:{Max:8,Current:8},Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-2]}]},{Call:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieMutation2-1]},{Name:"ChangeAI",Damage:[{Name:"ChangeStatus",Defense:{Add:4,Limit:250},SpecialDefense:{Add:4,Limit:250}},{Name:"Heal",Range:0,Multiplier:1d,Condition:[{Name:"RandomChance",Chance:0.09d},{Name:"MP",MP:13}]},{Name:"ChangeTurn",Set:8}],Tick:[{Name:"Function",Tags:[Global,Ground,Function,Combat,ZombieAura2]}]},{Name:"ChangeStatus",Attack:{Add:32},HP:{Add:41},Defense:{Add:39},SpecialDefense:{Add:39}},{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0.34d},{Name:generic.knockback_resistance,Base:1d}]}},{Name:"ChangeStatus",Defense:{Add:-1000,Limit:250},SpecialDefense:{Add:-1000,Limit:250}}]}],Exit:{Loop:{Max:3,Current:3}}},{Index:7}]}
