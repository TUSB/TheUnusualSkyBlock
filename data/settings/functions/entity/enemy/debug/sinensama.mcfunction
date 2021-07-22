### 深淵様データ
# TODO: tag=Mobは他でつけたい
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'"深淵様"',Tags:[Mob]}

### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b},{}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 48d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 5d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 180
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 5
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 5
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 2
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 2
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"",Radius:0.0d},Move:{Front:0,Side:0,Rotate:{Speed_x:0,Speed_y:0}},Skills:{Damage:"Damage",InBlock:"InBlock",Fire:"Fire",Water:"Water",Falling:"Falling",Flying:"Flying"}}]}
