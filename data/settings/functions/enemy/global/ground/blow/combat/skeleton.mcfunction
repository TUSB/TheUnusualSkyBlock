### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"コンバットスケルトン"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:5s}]}},{}],HandDropChances:[-1E300f,-1E300f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:4,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:6,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Call:[{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:6,IgnoreBlocks:true}}]}},{Index:4,Skill:[{Call:[{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:5s}]}},{}]}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
