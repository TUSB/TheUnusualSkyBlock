### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,HasAI],CustomName:'{"translate":"パンプキンキッド","color":"#FF0000","bold":true}',IsBaby:true,ActiveEffects:[{Id:8b,Amplifier:10b,Duration:2147483647},{Id:14b,Amplifier:127b,Duration:2147483647}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:knockback",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s}]},id:"minecraft:golden_hoe",Count:1b},{}],ArmorItems:[{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:0}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:0s}]},id:"minecraft:jack_o_lantern",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.22d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 1000
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 7
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 1
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Skill:[{Interval:{Min:32,Max:96,Current:250},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,PumpkinMortar],Level:1}],[{Tags:[Global,Event,Blow,Decoration,PumpkinMortarDecorationAec],Level:1}]],Target:{Look:"player",Radius:32.0d,IgnoreBlocks:true},Speed:0.2d,Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32}}]}]}]}]}
