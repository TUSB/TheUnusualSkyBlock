### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パイラシーゾンビ"}',PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:yellow_dye",count:1},{}],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":16776991},count:1},{id:"minecraft:golden_leggings",count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":16776991},count:1},{id:"minecraft:yellow_glazed_terracotta",count:1}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sこの静電気で麻痺させてやるぞ！為せば成る！","with":[{"translate":"【能力：追撃・麻痺】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"damage",Player:{},Distance:{Max:3d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:5b,duration:5,show_particles:false}]}}]}
