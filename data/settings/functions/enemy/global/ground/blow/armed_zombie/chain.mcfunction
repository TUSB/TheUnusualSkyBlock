### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[-1e+300F,0.085F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[-1e+300F,-1e+300F,-1e+300F,-1e+300F]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
