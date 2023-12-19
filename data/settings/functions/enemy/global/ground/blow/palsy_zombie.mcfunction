### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パイラシーゾンビ"}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:yellow_dye",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:16776991}},Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:16776991}},Count:1b},{id:"minecraft:yellow_glazed_terracotta",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.28d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sこの静電気で麻痺させてやるぞ！為せば成る！","with":[{"translate":"【能力：追撃・麻痺】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Damage",Player:{},Distance:{Max:3d},AEC:{Effects:[{Id:14,Amplifier:5b,Duration:5,ShowParticles:false}]}}]}
