### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:husk",Tags:[Mob,HasAI],CustomName:'"定期的に突進行動をしてくるハスク"'}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 2d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 1
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"player",Radius:8d,Block:false},Move:{Front:2d,Side:0d,Rotate:{Horizontal:0d}}}]}
