### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",CustomName:'{"translate":"執行者","color":"#FF0000","bold":true}',ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:6666,Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"netherite_sword",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3487029}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:8}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 80d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 4444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 4444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 444
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Executioner,GoToHell],Level:1}]]}],Damage:[{Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d,Target:{Look:"player",Radius:32d,IgnoreBlocks:true}}],Turn:[{Skill:[{Interval:{Min:30,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,Executioner,ExecutorsGuide]},{Name:"MergeNBT",NBT:{NoGravity:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:59}}],Name:"Step",Direction:[25f,-5f],Speed:1.6d,Target:{Look:"player",Radius:59},Absolute:{Vertical:true}},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:59}}],Name:"Step",Direction:[-25f,-5f],Speed:1.6d,Target:{Look:"player",Radius:59},Absolute:{Vertical:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:false}},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:60},Inverse:true},{Name:"HasTarget",Target:{Look:"player",Radius:80}}],Name:"Teleport",Direction:[0f,-90f],DirectionRange:[180.0f,180.0f],Absolute:{Horizontal:true,Vertical:true},Speed:8.5d},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:60},Inverse:true},{Name:"HasTarget",Target:{Look:"player",Radius:80}}],Name:"ChangeTurn",Loop:3}]}],Exit:{Loop:{Max:18,Current:18}}},{Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:3,Current:3},Call:[{Execute:"Random",Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[90f,-5f],Speed:1.5d,Target:{Look:"player",Radius:24}},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[-90f,-5f],Speed:1.5d,Target:{Look:"player",Radius:24}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:3,Current:3},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d,Target:{Look:"player",Radius:24}}]}],Exit:{Loop:{Max:2,Current:2}}},{Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Speed:0.4d,SpeedRange:0.8d,Direction:[0f,-90f],Target:{Look:"player",Radius:24}}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:24}}],Name:"Step",Direction:[0f,10f],Speed:2.0d},{Name:"ChangeTurn",Loop:2}]}]},{Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:10}}],Name:"Message",Message:'{"translate":"執行者からは逃れられない・・・","color":"#8F0000"}'},{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16}}],Name:"Message",Message:'{"translate":"あなたは恐怖した","color":"#8F0000"}'}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.ambient master @a[distance=..32] ~ ~ ~ 0.3 0.5
