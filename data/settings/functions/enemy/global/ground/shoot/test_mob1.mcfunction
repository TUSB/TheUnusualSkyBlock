### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"テストMOB1","color":"#00FF00","bold":true}',ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Mob,DelayedData,HasAI,CallOnDamage]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:12}}],Name:"Step",Direction:[-90f,0f],DirectionRange:[-180f,15f],Speed:0.6d,SpeedRange:1.6d}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:200,Current:200},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Random:true}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0.2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,ArrowRain],Level:1}]]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16.0d}}],Name:"Step"}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:5,Current:5},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:16.0d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-30f,-7f]}],Name:"Spawn",Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:16.0d,IgnoreBlocks:true}}],SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Direction",Direction:[-15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-15f,-7f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Direction",Direction:[0f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[0f,-7f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Direction",Direction:[15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[15f,-7f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Direction",Direction:[30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[30f,-7f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Name:"Step"}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:15,Max:15,Current:1},Loop:{Max:4,Current:4},Call:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:1.52d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,DeadlyArrow],Level:1}]],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16.0d,IgnoreBlocks:true}}]},{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:16.0d}}],Name:"Step"}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
