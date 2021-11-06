### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:slime",Size:0,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Exit:{Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:20}}]}},{Target:{Look:"player",Radius:20d},Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Execute:All,Name:"Spawn",SpawnEntities:[{Tags:["Underworld","Ground","Blow","SlygumCore"]}],Target:{Look:"player",Radius:20},Speed:0.25}]},{Interval:{Min:1,Max:1,Current:0},Loop:{Max:5,Current:0},Call:[{Execute:All,Name:"Spawn",SpawnEntities:[{Tags:["Underworld","Ground","Blow","SlygumBody"]}],Speed:0.3,SpeedRange:1.5}]}]},{Skill:[{Call:[{Execute:All,Name:"Kill"}]}]}]}
