### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,HasAI,CallOnDeath],CustomName:'{"translate":"デイドラ","color":"#FF0000","bold":true}',ActiveEffects:[{Id:8b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:3s}]},id:"minecraft:stone_sword",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:thorns",lvl:7s}]},id:"minecraft:damaged_anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 50
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 20
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 20
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 20
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 20
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 20
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 20
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 3
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 2
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 2
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Other,Blow,FinalAttack,FinalAttackPotion01],Level:1}]]}],Turn:[{Target:{Look:"player",Radius:24d},Skill:[{Interval:{Min:15,Max:60,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Target:{Look:"player",Radius:24d},Skill:[{Interval:{Min:5,Max:5,Current:5},Call:[{Execute:"Random",Name:"Step",Direction:[90f,-5f],Speed:0.9d},{Name:"Step",Direction:[-90f,-5f],Speed:0.9d}]}],Exit:{Loop:{Max:1,Current:1}}},{Target:{Look:"player",Radius:24d,IgnoreBlocks:1b},Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[0f,0f],Speed:1.0d}]},{Interval:{Min:2,Max:7,Current:5},Call:[{Name:"Step",Direction:[0f,-80f],Speed:2.0d}]},{Interval:{Min:12,Max:12,Current:12},Call:[{Name:"Step",Direction:[0f,0f],Speed:2.0d}]}],Exit:{Loop:{Max:3,Current:3}}}]}
