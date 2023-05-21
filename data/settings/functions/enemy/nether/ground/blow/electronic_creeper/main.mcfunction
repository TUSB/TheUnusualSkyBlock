### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"エレクトロニックリーパー"}',ExplosionRadius:3b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 45
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 45
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 133
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 245
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 85
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8,IgnoreBlocks:false}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Lightningbolt]},{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0d}],powered:1b}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Name:"MergeNBT",NBT:{Attributes:[{Name:generic.movement_speed,Base:0.4d}]}}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3}]}
