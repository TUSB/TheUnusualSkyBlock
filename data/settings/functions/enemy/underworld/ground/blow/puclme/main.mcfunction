### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",CustomName:'{"translate":"プクラム","color":"#FFFFFF","bold":true}',Size:1,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.27d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.35d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s最大8段階の大きさに対応！","with":[{"translate":"【能力：反撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}],TurnCount:8,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:3}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:37,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:6}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:47,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:4,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:9}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:57,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:5,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:12}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:67,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:6,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:15}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:77,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:7,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:18}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:87,RangeSpeed:0},{Name:"ChangeAI",Damage:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"ChangeAI",Damage:[{}]}]}]}]},{Index:8,Skill:[{Interval:{Min:10,Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:48d}}],Name:"MergeNBT",NBT:{Size:21}},{Name:"Function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:107,RangeSpeed:0},{Name:"ChangeAI",Damage:[{}]}]}]}]}
