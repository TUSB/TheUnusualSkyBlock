### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Skill:[{Interval:{Min:40,Max:100,Current:0},Loop:{Max:1,Current:0},Call:[{Name:"ShortTeleport",TeleportDistance:10}]}]}]}
