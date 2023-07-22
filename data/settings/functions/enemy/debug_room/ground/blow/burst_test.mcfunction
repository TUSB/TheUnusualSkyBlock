### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}]}

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:mushroom_stew",tag:{InstantEffect:{RecoverBP:15}}},Count:1,CountRange:3,Chance:0.8d}]
