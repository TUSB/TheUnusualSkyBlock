### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"テストPonpon"}',Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{display:{Name:'{"translate":"頭冷えてるやつ","color":"aqua"}'}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 110
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 85
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 2
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"player",Radius:10d},Move:{Front:3d,Side:1.2d},Rotate:[15f,0f]}]}
