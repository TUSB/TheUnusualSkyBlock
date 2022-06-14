### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"怒れる木","color":"#FF0000","bold":true}',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:18b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:7000,Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:2}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 8d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier4/mix",Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:240,Current:180},Call:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-30f,-4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[-15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[-15f,-4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[0f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[0f,-4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[15f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[15f,-4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]},{Settings:[{Name:"Direction",Direction:[30f,-80f],Speed:1.52d,Absolute:{Vertical:true}},{Name:"Rotation",Direction:[30f,-4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryTree,AngryAppleBullets],Level:1}]]}]}]}]}
