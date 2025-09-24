### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[-1e+300F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:iron_leggings",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:unbreakable":{}}}],ArmorDropChances:[-1e+300F,-1e+300F,-1e+300F,-1e+300F]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 33
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 33
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 33
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 33
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s出落ちはさせん！ させんぞー！","with":[{"translate":"【能力：なし】","color":"#00FF00"}]}]'
