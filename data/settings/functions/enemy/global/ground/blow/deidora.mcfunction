### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,HasAI,CallOnDeath,CallOnDamage],CustomName:'{"translate":"デイドラ","color":"#FF0000","bold":true}',ActiveEffects:[{Id:8b,Amplifier:10b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:3s}]},id:"minecraft:stone_sword",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:thorns",lvl:7s}]},id:"minecraft:damaged_anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.22d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."物理防御力" set value 60
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."魔法防御力" set value 40
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Other,Blow,FinalAttack,FinalAttackPotion01],Level:1}]]}],Damage:[{Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}}],Turn:[{Skill:[{Interval:{Min:60,Max:120,Current:1},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Event,Function,Sound,DeidoraWarcry]}]}],Exit:{Loop:{Max:1,Current:1}}},{Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:3,Current:3},Call:[{Execute:"Random",Name:"Step",Direction:[90f,-3f],Speed:0.5d,Target:{Look:"player",Radius:24},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}]},{Name:"Step",Direction:[-90f,-3f],Speed:0.5d,Target:{Look:"player",Radius:24},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[0f,-1f],Speed:0.6d,Target:{Look:"player",Radius:24},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:0.3d,SpeedRange:1.6d,Direction:[0f,-70f],Target:{Look:"player",Radius:24},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Step",Direction:[0f,-1f],Speed:1.8d,Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}]}]}],Exit:{Loop:{Max:2,Current:2}}}]}
