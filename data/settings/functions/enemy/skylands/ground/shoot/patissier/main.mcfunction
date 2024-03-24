### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"パティシエ","color":"#FF0000"}',Silent:true,IsBaby:true,PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"butcher",type:"desert"},Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[{id:"minecraft:sugar",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:true}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Unbreakable:true}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Unbreakable:true}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:1008}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d},{Loot:"item:item/warped_fungus_on_a_stick/block/cake",Count:1,Chance:0.1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%s糖質...0%2$s、強度...100%2$s!! これが答えだ。","with":[{"translate":"【能力：ワープ・射的・貫通・範囲攻撃】","color":"#00FF00"},"%"]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:7,RangeSpeed:30}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:120,Current:80},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}}],Name:"ChangeTurn",Set:2},{Condition:[{Name:"MinMP",MP:30,Percent:true},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.3d}],Name:"ChangeTurn",Set:3}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:20,Current:20},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}},{Name:"MinMP",MP:1}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[5f,5f],DirectionRange:[-10f,-10f]}],Name:"Laser",Laser:"WhiteLaser",Loop:64},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}},{Name:"MinMP",MP:1}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Warning]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}},{Name:"MinMP",MP:1}],Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:0,RangeSpeed:0}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:5,Current:5,Range:10},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[5f,5f],DirectionRange:[-10f,-10f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,Patissier,FreshCreamAstonish],Level:1}]]}],MP:5},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:7,RangeSpeed:30},{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",MP:30,Percent:true}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:64,IgnoreBlocks:true}},{Name:"Direction",Direction:[-30f,-90f],DirectionRange:[60f,-90f],Speed:3d,SpeedRange:3d}],Name:"Teleport"}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",MP:30,Percent:true},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"MinMP",MP:1}],Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:0,RangeSpeed:0},{Condition:[{Name:"MP",MP:30,Percent:true},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"MinMP",MP:1}],Name:"DelayAction",Tags:["Casting","FinishingMove"]},{Condition:[{Name:"MP",MP:30,Percent:true},{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"MinMP",MP:1}],Name:"ChangeAI",Damage:[{Name:"ChangeTurn",Set:1}]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",MP:30,Percent:true}],Settings:[{Name:"At",Target:{Look:"Self"}},{Name:"Direction",Direction:[0f,-90f],Speed:8d,Absolute:{Vertical:true}}],Name:"Spawn",IsChild:true,Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,Patissier,LastWedding],Level:100}],[{Tags:[Skylands,Ground,Shoot,Patissier,LastWeddingDisplay],Level:100}]]},{Name:"ChangeAI",Damage:[{}]}]},{Interval:{Min:120,Max:120,Current:120},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:7,RangeSpeed:30},{Name:"ChangeTurn",Set:1}]}]}]}
