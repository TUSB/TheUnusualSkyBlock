### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"金床様","color":"#FF0000","bold":true}',ActiveEffects:[{Id:8,Amplifier:10b,Duration:-1,ShowParticles:false},{Id:14,Amplifier:127b,Duration:-1,ShowParticle:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:3s}]},id:"minecraft:stone_sword",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorItems:[{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,RepairCost:-200000000,Enchantments:[{id:"minecraft:protection",lvl:0s}],display:{color:16711935}},id:"minecraft:leather_chestplate",Count:1b},{tag:{Unbreakable:true,Enchantments:[{id:"minecraft:thorns",lvl:7s}]},id:"minecraft:damaged_anvil",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.22d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.31d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"イメチェンしました。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,AnvilMan,FinalAttack],Level:1}]]}],Damage:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:240,Current:4},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Ground,Blow,AnvilMan,Warcry]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:3,Current:3},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:24}}],Execute:"Random",Name:"Step",Direction:[90f,-5f],Speed:1.5d},{Name:"Step",Direction:[-90f,-5f],Speed:1.5d}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[0f,-3f],Speed:3.0d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}],MP:15}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Step",Direction:[0f,-90f],Speed:0.4d,SpeedRange:0.8d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24}}],Name:"Step",Direction:[0f,10f],Speed:2.0d}],MP:15}],Exit:{Loop:{Max:2,Current:2}}}]}
