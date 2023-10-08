### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",Silent:1b,CustomName:'{"translate":"ロストメイジ","color":"#FFFFFF"}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:soul_lantern",Count:1b},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:32d,IgnoreBlocks:1b},Move:{Front:-0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}}]}
