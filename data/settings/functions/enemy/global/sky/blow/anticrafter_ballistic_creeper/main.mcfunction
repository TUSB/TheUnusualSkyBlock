### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"対クラフター弾道クリーパー","color":"#FFFFFF"}',Fuse:200s,ExplosionRadius:6f,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.31d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"３・・・２・・・１・・・GO！GO！GO！GO！"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Once:1,Skill:[{Interval:{Min:155,Max:155,Current:155},Loop:{Max:1,Current:1},Call:[{}],Once:1},{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true,ignited:true,ActiveEffects:[{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}]}}],Once:1},{Interval:{Min:5,Max:5,Current:5},Call:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],Absolute:{Vertical:true}}],Name:"Step",Speed:0.4d},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine]},{Name:"Function",Tags:[Global,Sky,Blow,AnticrafterBallisticCreeper,Sound]}]}],Exit:{Time:220,TimeCount:220}},{Index:3,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:30,Current:30},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d}}],Name:"Step",Speed:1.5d},{Condition:[{Name:"RandomChance",Chance:0.25d}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d}},{Name:"Rotation",Direction:[-60f,-60f],DirectionRange:[120f,120f]}],Name:"Step",Speed:1.0d,SpeedRange:2.0d},{Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine]},{Name:"Function",Tags:[Global,Sky,Blow,AnticrafterBallisticCreeper,Sound]}],Once:1},{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ActiveEffects:[{Id:28,Amplifier:1b,Duration:1,ShowParticles:false}]}}],Once:1}]}]}
