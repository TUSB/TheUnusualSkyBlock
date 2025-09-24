### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Silent:1b,CustomName:'{"translate":"ファイアメイジ","color":"#FFFFFF"}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":65}},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":14353664}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":14353664}},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":12}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"function",Tags:[Desert,Ground,Shoot,FireMage,Appearance]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}],Name:"change_turn",Set:2}]}]},{Index:2,Target:{Look:"Player",Radius:64d},Move:{Front:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}],Name:"change_turn",Set:1}]}]}]}
