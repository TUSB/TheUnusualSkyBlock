### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:blaze",Tags:[Mob,DelayedData,HasAI,CallOnDamage]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Element:[Fire],Condition:[{Name:"MP",MP:50}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,FlameReflection],Level:1}]],Speed:4d,Count:16,Rotation:{Direction:[0f,0f],DirectionRange:[0f,0f],Target:{Look:"player",Radius:64d,IgnoreBlocks:false}}}],Turn:[{Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{Condition:[{Name:"MP",MP:60}],Name:"ChangeTurn",Random:true}]}]},{Target:{Look:"player",Radius:24d},Move:{Front:0.1d,Side:0.25d},Rotate:[360f,360f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:48}}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,HellsFlameShot],Level:1}]],Speed:1d,Rotation:{Direction:[-3f,-3f],DirectionRange:[6f,6f],Target:{Look:"player",Radius:64d,IgnoreBlocks:false}}}]},{Interval:{Min:40,Max:40,Current:40},Call:[{}]}],Exit:{Loop:{Max:6,Current:6}}},{Target:{Look:"player",Radius:24d},Move:{Front:0.1d,Side:-0.25d},Rotate:[360f,360f],Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:10,Current:10},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:48}}],Name:"Spawn",SpawnEntities:[[{Tags:[Nether,Sky,Shoot,BlazeInferno,HellsFlameShot],Level:1}]],Speed:1d,Rotation:{Direction:[-3f,-3f],DirectionRange:[6f,6f],Target:{Look:"player",Radius:64d,IgnoreBlocks:false}}}]},{Interval:{Min:40,Max:40,Current:40},Call:[{}]}],Exit:{Loop:{Max:6,Current:6}}}]}
