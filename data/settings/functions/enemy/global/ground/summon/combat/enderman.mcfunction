### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:enderman",CustomName:'{"translate":"コンバットエンダーマン"}',AngerTime:2147483647,HandDropChances:[-1E300f,-1E300f],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 169
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 73
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s目を合わさずとも襲っちゃうぞ。","with":[{"translate":"【能力：コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:300,Max:600,Current:180},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Exit:{Condition:[{Name:"MP",MP:23}]}},{Index:3,Skill:[{Call:[{Name:"MergeNBT",NBT:{carriedBlockState:{Name:"minecraft:end_stone"}}},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Equiping]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:4,IgnoreBlocks:false}}]}},{Index:5,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,FakeEndStone,Placed]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,FakeEndstone,Body],Level:1}],[{Tags:[Global,Ground,Blow,FakeEndstone,Display],Level:1}]],Settings:[{Name:"Rotation",Direction:[0f,0f],Absolute:{Vertical:true}}]},{Name:"MergeNBT",NBT:{carriedBlockState:{Name:"minecraft:air"}}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
