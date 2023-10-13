### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:spider",CustomName:'{"translate":"ホッパー"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.25d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"実は最初に作られました。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:20,Current:30},Call:[{Execute:"Random",Name:"Step",Direction:[0f,-10f],Speed:1.2d},{Name:"Step",Direction:[70f,-20f],Speed:0.6d},{Name:"Step",Direction:[-70f,-20f],Speed:0.6d}],MP:1}]}]}
