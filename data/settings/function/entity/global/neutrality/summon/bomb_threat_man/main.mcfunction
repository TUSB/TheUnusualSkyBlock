### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,"WanderingVillager"],CustomName:'{"translate":"爆弾魔","color":"#0000FF","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"librarian",type:"snow"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":17}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:tnt"},Count:1,CountRange:4,Chance:1d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s([∩∩])<死にたいらしいな。","with":[{"translate":"【能力：逃走・移動・取引・コール・火だるま・範囲攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:8}}],Name:"step",Direction:[180f,-5f],Speed:2.5d,SpeedRange:1.4d,Absolute:{Vertical:true}},{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:80d}},{Name:"min_hp",Inverse:true,HP:50,Percent:true}],Name:"function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTimeToZero]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:60},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:80d}},{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"change_turn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:4},Call:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,0f]},{Name:"Direction",Speed:1d}],Name:"spawn",NonParentLevel:true,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:1}]]}],MP:5},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,0f]},{Name:"Direction",Speed:1d}],Name:"spawn",NonParentLevel:true,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBombHuge,Main],Level:1}]]}],MP:15},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}]}]}
