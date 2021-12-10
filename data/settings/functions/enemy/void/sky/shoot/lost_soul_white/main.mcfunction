### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vex",Silent:1b,CustomName:'{"translate":"迷える魂"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 44d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 221
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 221
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 221
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 221
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 221
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 221
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:100d,IgnoreBlocks:true}}],Name:"Step",Speed:0.4d,Target:{Look:"player",Radius:44d,IgnoreBlocks:true}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:100d,IgnoreBlocks:true},Half:"up"}],Name:"Step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.8d}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:10d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Grobal:1b,Name:"HasTarget",Target:{Look:"player",Radius:44d,IgnoreBlocks:true}}],Name:"Step",Speed:-0.3d,Target:{Look:"player",Radius:44d,IgnoreBlocks:true}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:44d,IgnoreBlocks:true},Half:"up"}],Name:"Step",Direction:[0f,-90f],DirectionRange:[0f,25f],Speed:0.8d}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"player",Radius:10d,IgnoreBlocks:true}}]}}]}
