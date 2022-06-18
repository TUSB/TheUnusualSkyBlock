### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"三角様","color":"#FF0000","bold":true}',NoGravity:False,NoAI:False,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"\"チェイサーの弓\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:power"}],RepairCost:-99999999}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーの靴\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーのズボン\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8388736,Name:"\"チェイサーの服\""},Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}},{id:"minecraft:dragon_egg",Count:1b,tag:{Unbreakable:true,Enchantments:[{lvl:0s,id:"minecraft:protection"}],RepairCost:-99999999}}]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:12}}],Name:"Step",Direction:[-90f,0f],DirectionRange:[-180f,15f],Speed:0.6d,SpeedRange:1.6d}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:false}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Random:true}]}]},{Index:3,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0.2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,ArrowRain],Level:1}]]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16.0d}}],Name:"Step"}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:3,Current:3},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Friendly",Radius:16.0d,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Friendly",Radius:16.0d,IgnoreBlocks:true}}]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-30f,-3f]},{Name:"Direction",Speed:1.52d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[-15f,-3f]},{Name:"Direction",Speed:1.52d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,-3f]},{Name:"Direction",Speed:1.52d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[15f,-3f]},{Name:"Direction",Speed:1.52d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[30f,-3f]},{Name:"Direction",Speed:1.52d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,5WayArrow],Level:1}]]}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:5,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoAI:true}}]},{Interval:{Min:15,Max:15,Current:1},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:1.52d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,DeadlyArrow],Level:1}]],Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:16.0d,IgnoreBlocks:true}}]},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16.0d}}],Name:"Step"}]},{Interval:{Min:28,Max:28,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
