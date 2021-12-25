### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"カトン・ニンジャ","color":"#FFFFFF"}',ActiveEffects:[{Id:8b,Amplifier:2b,Duration:2147483647,ShowParticles:0b}],Tags:[Mob,DelayedData,HasAI,CallOnDamage]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:7s}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ニンジャ",Id:[I;1,0,20,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBiZmNkZjNjYjcxNzQyNTNkMzdlOGQzNDVhODU4MmY1Zjc0ZDdmNTljN2M3OTU3YjcwYzJhYmM3NzQ1Y2E3In19fQ=="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.23d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 20
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"MergeNBT",NBT:{NoAI:false,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:7s}]}},{}]}},{Name:"ChangeTurn",Set:1}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:false,NoAI:false,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:7s}]}},{}]}}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:0.8d,SpeedRange:1.4d,Absolute:{Vertical:true},Direction:[0f,-70f],Target:{Look:"player",Radius:24}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",Inverse:true,Global:true,MP:5}],Name:"MergeNBT",NBT:{NoGravity:true,NoAI:true}},{Name:"ChangeTurn",Set:1},{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:122,Explosion:{Type:0,Colors:[I;16731960]}}},{}]}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:4,Current:4},Call:[{Condition:[{Name:"MP",MP:5}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,NinjaTypeF,Shuriken],Level:1}],[{Tags:[Global,Ground,Shoot,NinjaTypeF,ShurikenAec],Level:1}]],Direction:[0f,0f],Speed:1d,Absolute:{Vertical:true},Target:{Look:"player",Radius:24d},Rotation:{Direction:[0f,0f],Target:{Look:"player",Radius:24d}}},{Name:"Step",Direction:[20f,0f]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"Step",Direction:[90f,-5f],Speed:0.8d,SpeedRange:1.4d,Absolute:{Vertical:true},Target:{Look:"player",Radius:64d,IgnoreBlocks:true}},{Name:"Step",Direction:[-90f,-5f],Speed:1.8d,SpeedRange:2.8d,Absolute:{Vertical:true},Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",Inverse:true,Global:true,MP:5}],Name:"MergeNBT",NBT:{NoGravity:true,NoAI:true}},{Name:"ChangeTurn",Set:1},{Name:"Step",Direction:[0f,45f]},{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1,Explosion:{Type:0,Colors:[I;16777215]}}},{}]}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:15,Current:15},Call:[{Condition:[{Name:"MP",MP:5}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,NinjaTypeF,FireBreath],Level:1}]],Direction:[0f,0f],Speed:1d,Absolute:{Vertical:true},Target:{Look:"player",Radius:24d,IgnoreBlocks:true},Rotation:{Direction:[0f,0f],Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}},{Name:"Step",Direction:[0f,-15f]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:4,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:0.8d,SpeedRange:1.4d,Absolute:{Vertical:true},Direction:[180f,-5f],Target:{Look:"player",Radius:24}}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",Inverse:true,Global:true,MP:5}],Name:"MergeNBT",NBT:{NoGravity:true,NoAI:true}},{Name:"ChangeTurn",Set:1},{Name:"Step",Direction:[0f,45f]},{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:85,Explosion:{Type:0,Colors:[I;16777215]}}},{}]}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MP",Global:true,MP:5}],Name:"Teleport",Direction:[-180f,-5f],Speed:5d,SpeedRange:3d,Message:true,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}},{Name:"Blink",Count:3,Chance:0.8d,TriggerOn:[Physical,Ice,Lightning,Dark]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
