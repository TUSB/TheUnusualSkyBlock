### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"トビスケ"}',HandDropChances:[-1E300f,-1E300f],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:bow",count:1},{}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s骨髄反射で飛んでいるだけだよ。","with":[{"translate":"【能力：反撃・移動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"blink",Count:1,Chance:1d}],Damage:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d,IgnoreBlocks:false}}],Name:"change_turn",Set:2},{Name:"change_ai",Damage:[{}]}],TurnCount:3,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"check_nbt",NBT:{OnGround:true}}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,50f],DirectionRange:[0f,10f]}],Name:"step",Speed:-1.4d}]},{Interval:{Min:20,Max:20,Current:20},Call:[{Name:"merge_nbt",NBT:{NoGravity:true}},{Name:"change_ai",Damage:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"step",Speed:1.6d,SpeedRange:0.4d,Absolute:{Horizontal:true}}]},{Name:"change_turn",Set:3}]}]},{Index:3}]}
