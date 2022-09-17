### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither",CustomName:'{"translate":"Witherlord","obfuscated":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
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
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Global,Event,Function,Lightningbolt]},{Name:"Damage",Player:{BypassArmor:1b,BypassResistance:1b,EPF:0},Distance:{Max:0d}}],TurnCount:3,Turn:[{Index:1,Skill:[{Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Look:Player,Radius:32,IgnoreBlocks:1b}]}},{Index:2,Skill:[{Interval:{Min:200,Max:200,Current:200},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:1b}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:50,Current:50},Call:[{Name:"Function",Tags:[Global,Event,Function,Combat,WitherSkull]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,Witherlord,WitherSkull],Level:1}]],Count:1,Settings:[{Name:"Anchor",Anchor:Eyes},{Name:"Direction",Speed:1d,Direction:[90f,20f],Absolute:{Vertical:1b}}]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,Witherlord,WitherSkull],Level:1}]],Count:1,Settings:[{Name:"Anchor",Anchor:Eyes},{Name:"Direction",Speed:1d,Direction:[-90f,20f],Absolute:{Vertical:1b}}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:0b}}]}],Exit:{Loop:{Max:4,Current:4}}},{Index:3,Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:1b}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:5,Current:5},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Bullet,Witherlord,WitherLightningBall],Level:1}],[{Tags:[Global,Sky,Bullet,Witherlord,WitherLightning],Level:1}]],Count:2,Settings:[{Name:"Anchor",Anchor:Eyes}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:0b}}]}],Exit:{Loop:{Max:64,Current:64}}}]}
