### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",CustomName:'{"translate":"スライガム","color":"#FFFFFF"}',Size:1,NoGravity:true,DeathTime:19s,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Target:{Look:"player",Radius:20d},Move:{Front:0.35d,Side:0d,Up:0.25d},Rotate:[-5f,-5f],Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:["Underworld","Ground","Blow","Slygum","Body"],Level:1}]],Speed:1.5,SpeedRange:4,DirectionRange:[360f,360f],Direction:[0f,-90f]},{Name:"Spawn",SpawnEntities:[[{Tags:["Underworld","Ground","Blow","Slygum","Body"],Level:1}]],Speed:1.5,SpeedRange:4,DirectionRange:[360f,360f],Direction:[0f,-90f]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:15,IgnoreBlocks:false},Inverse:true}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:15,IgnoreBlocks:false}}]}}]}
