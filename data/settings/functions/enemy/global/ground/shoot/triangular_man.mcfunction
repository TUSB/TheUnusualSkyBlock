### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Tags:[Mob,HasAI,CallOnDamage],CustomName:'{"translate":"三角様","color":"#FF0000","bold":true}',NoGravity:False,NoAI:False,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"\"チェイサーの弓\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:power"}],RepairCost:-99999999}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーの靴\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーのズボン\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーの服\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:dragon_egg",Count:1b,tag:{Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 25
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 1
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
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Execute:"Random",Name:"Step",Direction:[-90f,0f],DirectionRange:[-180f,15f],Speed:0.2d,SpeedRange:1.2d,Target:{Look:"player",Radius:16},Condition:{Name:"HasTarget",Target:{Look:"player",Radius:12}}},{Name:"ChangeTurn",Random:true}],Turn:[{Skill:[{Interval:{Min:300,Max:300,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}}]}],Exit:{Time:320}},{Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:50,Current:50},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,ArrowRain],Level:1}]]}]},{Interval:{Min:7,Max:7,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:2}]}],Exit:{Time:320}},{Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:7,Max:7,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}],Exit:{Time:320}},{Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:20,Max:20,Current:1},Loop:{Max:3,Current:3},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Shoot,EnemyBullet,DeadlyArrow],Level:1}]]}]},{Interval:{Min:7,Max:7,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:320}}]}
