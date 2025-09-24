### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:spider",CustomName:'{"translate":"ホッパー"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.35d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 3
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s実は最初に作られました。","with":[{"translate":"【能力：移動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:20,Current:30},Call:[{Execute:"Random",Name:"step",Direction:[0f,-10f],Speed:1.2d},{Name:"step",Direction:[70f,-20f],Speed:0.6d},{Name:"step",Direction:[-70f,-20f],Speed:0.6d}],MP:1}]}]}
