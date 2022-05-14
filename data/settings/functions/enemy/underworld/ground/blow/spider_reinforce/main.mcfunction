### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:spider",CustomName:'{"translate":"リインフォーススパイダー","color":"#FFFFFF"}',DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,CallOnAttack,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.4d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"#N/A",Count:1,Chance:0.1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Step",Direction:[0f,-90f],DirectionRange:[180.0f,180.0f],Speed:0.3d,SpeedRange:0.2d,Absolute:{Horizontal:true,Vertical:true}}],Attack:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:1.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0.2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebEffect],Level:1}]]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:10,Current:20},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",IgnoreBlocks:true}}],Name:"Step",Direction:[180f,20f],DirectionRange:[90f,10f]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:30,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-5f],Speed:1.4d,Target:{Look:"Player",Radius:32.0d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebShoot],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,20f],DirectionRange:[90f,10f]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:1,Max:100,Current:30},Loop:{Max:3,Current:3},Call:[{Execute:"Random",Name:"MergeNBT",NBT:{ActiveEffects:[{Id:14,Amplifier:0,Duration:100,ShowParticles:false}]}},{Name:"MergeNBT",NBT:{ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647,ShowParticles:false}]}}]},{Interval:{Min:10,Max:30,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32}},{Name:"Direction",Direction:[0f,-5f],Speed:1.4d,Target:{Look:"Player",Radius:32.0d,IgnoreBlocks:true}}],Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,Egg],Level:1}]],Direction:[0f,-5f]}],Once:3}],Exit:{Loop:{Max:1,Current:1}}}]}
