### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"金床様","color":"#FF0000","bold":true}',active_effects:[{id:"minecraft:jump_boost",amplifier:10b,duration:-1,show_particles:false},{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:fire_aspect":5,"minecraft:knockback":3,"minecraft:sweeping":3}}},id:"minecraft:stone_sword",count:1}],HandDropChances:[-Infinityf,-Infinityf],ArmorItems:[{components:{"minecraft:unbreakable":{},"minecraft:repair_cost":200000000,"minecraft:enchantments":{levels:{"minecraft:protection":0}},"minecraft:dyed_color":16711935},id:"minecraft:leather_boots",count:1},{components:{"minecraft:unbreakable":{},"minecraft:repair_cost":200000000,"minecraft:enchantments":{levels:{"minecraft:protection":0}},"minecraft:dyed_color":16711935},id:"minecraft:leather_leggings",count:1},{components:{"minecraft:unbreakable":{},"minecraft:repair_cost":200000000,"minecraft:enchantments":{levels:{"minecraft:protection":0}},"minecraft:dyed_color":16711935},id:"minecraft:leather_chestplate",count:1},{components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:thorns":7}}},id:"minecraft:damaged_anvil",count:1}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.22d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 40
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sイメチェンしました。","with":[{"translate":"【能力：移動・反撃・終撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,AnvilMan,FinalAttack],Level:1}]]}],Damage:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Execute:"Random",Name:"step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d},{Name:"step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:240,Current:4},Loop:{Max:2,Current:2},Call:[{Name:"function",Tags:[Global,Ground,Blow,AnvilMan,Warcry]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:3,Current:3},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:24}}],Execute:"Random",Name:"step",Direction:[90f,-5f],Speed:1.5d},{Name:"step",Direction:[-90f,-5f],Speed:1.5d}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:3,Current:3},Call:[{Name:"step",Direction:[0f,-3f],Speed:3.0d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}],MP:15}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"step",Direction:[0f,-90f],Speed:0.4d,SpeedRange:0.8d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:24}}],Name:"step",Direction:[0f,10f],Speed:2.0d}],MP:15}],Exit:{Loop:{Max:2,Current:2}}}]}
