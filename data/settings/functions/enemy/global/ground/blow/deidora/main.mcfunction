### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"デイドラ","color":"#FF0000","bold":true}',ActiveEffects:[{Id:8b,Amplifier:10b,Duration:2147483647,ShowParticles:false},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:false}],Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:3s}]},id:"minecraft:stone_sword",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:thorns",lvl:7s}]},id:"minecraft:damaged_anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.22d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 40
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,FinalAttack,FinalAttackPotion01],Level:1}]]}],Damage:[{Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:60,Current:1},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Ground,Blow,Deidora,DeidoraWarcry]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:3,Current:3},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[90f,-5f],Speed:1.5d,Target:{Look:"player",Radius:24}},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[-90f,-5f],Speed:1.5d,Target:{Look:"player",Radius:24}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:3,Current:3},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d,Target:{Look:"player",Radius:24}}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Speed:0.4d,SpeedRange:0.8d,Direction:[0f,-90f],Target:{Look:"player",Radius:24}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[0f,10f],Speed:2.0d}]}],Exit:{Loop:{Max:2,Current:2}}}]}
