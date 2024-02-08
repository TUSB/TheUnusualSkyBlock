### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:silverfish",CustomName:'{"translate":"コンバットシルバーフィッシュ"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 124
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 124
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 178
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 113
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 113
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 55
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 97
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 85
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Chance:d}]
