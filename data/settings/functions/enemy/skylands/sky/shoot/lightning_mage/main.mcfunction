### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Silent:1b,CustomName:'{"translate":"ライトニングメイジ","color":"#FFFFFF"}',ActiveEffects:[{Id:28,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:67}},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16772378}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16772378}}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:13}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]}],Tick:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:20d,IgnoreBlocks:true},Half:"up"}],Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]},{Condition:[{Name:"CheckNBT",Inverse:true,NBT:{OnGround:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,LevitationParticle]},{Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,Appearance]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:45,Max:45,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Friendly",Radius:10d,IgnoreBlocks:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,Levitation]},{Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,LevitationDirection]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Speed:1d}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:-0.4d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:10d,IgnoreBlocks:true}}]}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
