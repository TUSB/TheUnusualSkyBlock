### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",Tags:[Mob,HasAI],CustomName:'{"translate":"対クラフター弾道クリーパー","color":"#FFFFFF"}',Fuse:250,ExplosionRadius:10f}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 25
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 1
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Exit:{Time:240}},{Skill:[{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:true,ignited:true}}],Once:{Max:1}},{Interval:{Min:5,Max:5,Current:60},Call:[{Execute:"All",Name:"Step",Direction:[0f,90f],Speed:0.7d,Target:{Look:"player",Radius:32d}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,Decoration,CloudDecorationAec],Level:1}]]}]}],Exit:{Time:120}},{Skill:[{Interval:{Min:5,Max:5,Current:5},Call:[{Execute:"All",Name:"Step",Direction:[0f,0f],Speed:0.7d,Target:{Look:"player",Radius:32d}},{Name:"Step",Direction:[-10f,-10f],DirectionRange:[20f,20f],Speed:0.15d,SpeedRange:0.5d,Target:{Look:"player",Radius:32d},Condition:{Name:"RandomChance",Chance:0.25d}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,Decoration,CloudDecorationAec],Level:1}]]}]}]}]}
