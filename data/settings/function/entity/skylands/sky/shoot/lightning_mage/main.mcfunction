### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Silent:1b,CustomName:'{"translate":"ライトニングメイジ","color":"#FFFFFF"}',active_effects:[{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTick,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":67}},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16772378}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16772378}},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":13}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s背中に重たい何かを背負っているよ、かっこいいでしょ！","with":[{"translate":"【能力：移動・射的・麻痺・範囲攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]}],Tick:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:20d,IgnoreBlocks:true},Half:"up"}],Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]},{Condition:[{Name:"check_nbt",Inverse:true,NBT:{OnGround:true}}],Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,LevitationParticle]},{Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,Appearance]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:45,Max:45,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Friendly",Radius:10d,IgnoreBlocks:true}}],Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]},{Name:"function",Tags:[Skylands,Sky,Shoot,LightningMage,LevitationDirection]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"step",Speed:1d}]}],Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"step",Speed:-0.4d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}]}]}],Exit:{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
