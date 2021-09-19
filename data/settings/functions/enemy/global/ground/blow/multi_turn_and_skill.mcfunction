### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"Turnが2つスキルが(2,3)つあるMob"}',Tags:[Mob,HasAI,"Mob"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 40
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 110
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 85
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 2
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 5
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 2
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 2
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 5
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 2
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 2
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"player",Radius:5d,Block:false},Move:{Front:2d,Side:1d,Rotate:10},Skill:[{Interval:{Min:30,Max:100,Current:60},Loop:{Max:1,Current:1},Call:{Name:"A"}},{Interval:{Min:70,Max:90,Current:80},Loop:{Max:2,Current:2},Call:{Name:"B"}}],Exit:{Time:1200}}]}
