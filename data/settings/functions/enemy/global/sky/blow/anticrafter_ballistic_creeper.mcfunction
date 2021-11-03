### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"対クラフター弾道クリーパー","color":"#FFFFFF"}',Fuse:250s,ExplosionRadius:6f,Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Exit:{Time:200,TimeCount:200}},{Skill:[{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true,ignited:true,ActiveEffects:[{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}]}}],Once:{Max:1}},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:500,Current:500},Call:[{Execute:"All",Name:"Step",Direction:[0f,-90f],Speed:0.4d,Absolute:{Horizontal:true,Vertical:true}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,Decoration,CloudDecorationAec],Level:1}]]}]}],Exit:{Time:80,TimeCount:80}},{Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:30,Current:30},Call:[{Execute:"All",Name:"Step",Direction:[0f,0f],Speed:1.5d,Target:{Look:"player",Radius:64d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:64}}]},{Name:"Step",Direction:[-60f,-60f],DirectionRange:[120f,120f],Speed:1.0d,SpeedRange:2.0d,Target:{Look:"player",Radius:32d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32}},{Name:"RandomChance",Chance:0.25d}]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,Decoration,CloudDecorationAec],Level:1}]],Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:16}}]}],Once:{Max:1}},{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ActiveEffects:[{Id:28b,Amplifier:1b,Duration:1,ShowParticles:false}]}}],Once:{Max:1}}]}]}
